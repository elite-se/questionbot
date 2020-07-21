# Purpose
This tool expects a file containing "Questions" in Markdown format.
h1 Elements are interpreted as Chapters, h2 Elements as Questions
and Text under h2 Elements as answers to said questions.

Example task file:

```
# Chapter 1: Introduction
## What is the meaning of Life?

42

## Give 5 reasons to stop procrastinating
* Better grades
* Less half-finished sideprojects

...
```

# Usage
`$ swift questionbot.swift tasks.md`
