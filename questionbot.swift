import Cocoa

struct Task {
    let statement: String
    let solution: String
}

struct Chapter {
    let title: String
    var tasks: [Task] = []
}

func parse(taskfile path: String) -> [Chapter] {
    var chapters: [Chapter] = []
    
    var text = ""
    do {
        text = try String(contentsOfFile: path, encoding: .utf8)
    } catch {
        print(error)
    }
    
    var currentChapter = Chapter(title: "Unassigned")
    var currentStatement: String? = nil
    var currentSolution: String? = nil
    text.components(separatedBy: .newlines).forEach { line in
        if line.starts(with: "# ") {
            // New chapter
            let title = String(line.suffix(from: line.index(line.startIndex, offsetBy: 2)))
            
            if currentChapter.tasks.count > 0 {
                chapters.append(currentChapter)
            }
            
            currentChapter = Chapter(title: title)
        } else if line.starts(with: "## ") {
            if let statement = currentStatement, let solution = currentSolution {
                currentChapter.tasks.append(Task(statement: statement, solution: solution))
            }
            
            currentStatement = String(line.suffix(from: line.index(line.startIndex, offsetBy: 3)))
            currentSolution = nil
        } else {
            if currentSolution == nil {
                if !line.trimmingCharacters(in: .whitespaces).isEmpty {
                    currentSolution = line
                }
            } else {
                currentSolution! += "\n" + line
            }
        }
    }

    if let statement = currentStatement, let solution = currentSolution {
        currentChapter.tasks.append(Task(statement: statement, solution: solution))
    }
    if currentChapter.tasks.count > 0 {
        chapters.append(currentChapter)
    }
    
    return chapters
}


var taskfilePath: String? = nil
for argument in CommandLine.arguments[1..<CommandLine.arguments.count] {
    switch argument {
    case "-h", "--help":
        print(
"""
This tool expects a file containing \"Questions\" in Markdown format.
h1 Elements are interpreted as Chapters, h2 Elements as Questions
and Text under h2 Elements as answers to said questions.

Example task file:

# Chapter 1: Introduction
## What is the meaning of Life?

42

## Give 5 reasons to stop procrastinating
* Better grades
* Less halve-finished sideprojects

...

"""
        )
        exit(0)
    default:
        taskfilePath = argument
    }
}
guard let taskfile = taskfilePath else {
    print("Usage: ./\(CommandLine.arguments[0]) <path-to-markdown-tasks-file>")
    exit(1)
}

let chapters = parse(taskfile: taskfile)

// ========================
//  COMMAND LINE INTERFACE
// ========================

print("Identified the following Chapters:")
chapters.enumerated().forEach { (index, chapter) in
    print("  [\(index)]: \(chapter.title) (\(chapter.tasks.count) questions)")
}

var index = 0
if (chapters.count > 1) {
    print("Which chapter do you want to practice? ", terminator: "")
    var answer = readLine()
    while answer == nil || Int(answer!) == nil || Int(answer!)! >= chapters.count || Int(answer!)! < 0 {
        print("Invalid answer, please choose one of (\(chapters.enumerated().map({ (i, _) in "\(i)" }).joined(separator: ", "))): ", terminator: "")
        answer = readLine()
    }

    index = Int(answer!)!
}
let selectedChapter = chapters[index]
print("Selected chapter \(index): \(selectedChapter.title)")

var correctCnt = 0
var answeredCnt = 0
var questions = selectedChapter.tasks.shuffled()
while !questions.isEmpty {
    let task = questions.removeFirst()
    answeredCnt += 1
    
    // Clear screen
    print("", terminator: "\u{001B}[2J\u{001B}[0;01H")
    print("Question \(answeredCnt)/\(answeredCnt + questions.count): \u{001B}[1m\(task.statement)\u{001B}[0m")
    _ = readLine()
    print("\u{001B}[3m\(task.solution)\u{001B}[0m")
    
    print("Was your answer correct? [y/n]: ", terminator: "")
    var answer = readLine()
    while answer == nil || (answer! != "y" && answer! != "n") {
        print("Unrecognized input. Was your answer correct? [y/n]: ", terminator: "")
        answer = readLine()
    }
    
    if (answer! == "y") {
        correctCnt += 1
    } else {
        questions.append(task)
    }
}

print("", terminator: "\u{001B}[2J\u{001B}[0;01H")
var correctPercentage = Int(Float(correctCnt) / Float(answeredCnt) * 100)
print("\u{001B}[1mCongratulations, you answered \(correctCnt) out of \(answeredCnt) questions correctly (\(correctPercentage)%)\u{001B}[0m")

