# Meta

## Wie lange dauert die Prüfung?

30 Minuten inklusive Notenfestlegung etc

Also 20 Minuten

# Definitionen

Hier einige Vorschläge für knappe lernbare Definitionen:

## Problem

Ein Problem ist ein bewerteter protenzieller Ist-Zustand

## Lösung

FIXME

## Ziel

Ein Ziel ist ein Soll-Zustand

## Traceability

FIXME

## Systemmodell

Ein Systemmodell beschreibt bestimmte Modellsichten und deren Verhalten auf ein System.

## Qualitätsmodell

FIXME

Ein Qualitätsmodell legt kritieren für die Qualität von Anfoderungen und RE-Prozesse fest.

## Usage Model

Beschreibt eine Menge aller Szenarien bzw. Abläufe durch das System

* Usecase Übersichtsdiagramm
* Interaktionsdiagramm
* Usecase

## Funktionshierarchie

* Identifikation von Funktinoen anhand der Szenarien
* Verferinerung der Funktionen und Identifiaktionen von Wechselwirkungen
* Spezifikation der Schnittstellen innerhalb der Funktionen

## Funktionale Anforderung

Eine funktionale Anforderung beschreibt die Reaktion eines Systems.

## Usecase

Nach Cockburn Template

# 0 Kernaufgaben

## Welche Kernaufgaben gibt es im RE?

1. Elicitation
2. Analysis
3. Specification
4. Verification & Validation

## Was ist der Unterschied zwischen Verifikation und Validation?

* Verification: Abgleich von Code und Spezifikation - "How do I build my system right?"
* Validation: Überprüfung der Anforderungen - "How do I build the right system? "

## Wann wählt man einen Agilen Prozess und wann Wasserfall/V-Modell?

Agil:
* Ändernde Anforderungen
* Falls man noch gar nicht weis was die Lösung ist

Starrer Prozess:
* Falls zertifizierung wichtig (zB Medizinbranche)
* Bei Cyber-Phyisical Systems
* Bei System of Systems

# 1 Prozess und Rahmenwerke

## Was ist der Unterschied zwischen Aktivitätsorientierung und Artefaktorientierung?

Frage eher: Worauf fokusiert man sich?

Aktivitätsorientierung: Man fokusiert sich auf Prozesschritte
Artefaktorientierung: Man fokusiert sich auf Artefakte
  
## Was wären zwei typische Projekte in denen man eine der beiden Richtungen wählt?

FIXME

## Was ist der Unterschied zwischen Nutzer und Systemanfoderungen?

- Nutzeranforderungen sind im Problemraum
- Systemanforderungen sind im Lösungsraum

# 2 Stakeholder und Erhebungstechniken

## Welche Methoden gibt es zur Anforderungserhebung?

## Was sollte man sich bei Anforderungen immer definieren?

Die Rationale: "Warum ist das relevant?"

## Welche Stakeholder gibt es?

* Mitarbeiter (Software, Maschienenbau, Elektrotechniker)
* Management, Projektleiter
* Konkurrenten
* Gesetzgeber
* Endkunde

## Wie priorisiert man Anforderungen?

1. Nach Risiko
2. FIXME

# 3 Zielmodellierung

## Was ist Connways Law?

Die Software entspriche der Unternehmensstruktur

## Welche Probleme hat agile Softwareentwicklung?

* Die Architekturentwicklung bei agilen Projekten wird vernachlässigt. Was ist die Soll- und was ist die Ist-Architektur?

## Welchen Konflikt gibt es in der Softwareeentwicklung?

Time-to-market vs. Warbarkeit und Dokumentaiton

## Was ist ein Vorgehensmodell?

Das Modell beschreibt:
* Wer, was, wie und wann in der Entwicklung macht.
* Wie schreibt man Anforderungen auf?
 
Beispiel: V-Modell

## Wie geht nochmal GQM?

FIXME
Man versucht Ziele durch Metriken fassbar zu machen.
* Welche Metriken eignen sich für Ziele?
* Versuchen die Ziele zu erreichen
* Messen ob zu sehen ob das Ziel erreicht ist

## Wann setzt man GQM ein?

Nachdem ein Goal-Model erstellt wurde.

Stakeholder -> Erhebungstechniken -> Goal Model -> Goal Question Metric

Wann benutzt man Metriken? z.B. bei Safety

## Was sind 5 Techniken der IDEA Method Cards?

* Error-Analysis
* Fly-on-the-Wall
* Time-Leapse-Videos
* 5-Whys
* Paper Prototyping

# 4 Funktionale Anforderungen/Use Cases

## Wie werden Use Cases erstellt?

* Kontext: Ist-Zustand analysieren
* Blackbox: Modellieren des gewünschten Verhaltens
* Whitebox: Finden und Spezifizieren von einzelnen Funktionen


# 5 Systemmodelle

Ein Systemmodell ist ein Metamodel. Es gibt Usage Model etc.

## Was versteht man unter Semantik bei Systemmodellen?

FIXME
* Syntax
  * Es gibt Port, etc.
* Semantik:
  * Semantische Definitionen würde man separat definieren. z.B. bei Semantik von Zustandsmaschineen

Syntax = Semantik:
* Man bildet immer ein Konstrukt auf ein anderes ab um es besser zu verstehen


Es gibt eine Schnittstelle. Es gibt Paramteter, Pfade etc. Das wäre ja eigentlich Syntax. Aber trotzdem ist damit gleichzeitig die Semantik gemeint.

Bei Zustandsmaschinen mit Traces ist das hingegen sehr klar.

Paper: Types as abtract interpretation

## Welche Ansätze gibt es für das synchronisierung von Artefakten bzw. zur Konsistenzbewahrung?

* synthetisch
* projektiv



Bei reinen Softareprojekten ist 100%ige Konsistenzbewahrung nicht praktikabel. Bei Cyber-Physikalsichen System allerdings schon!

## Welche Arten der Abstraktion gibt es?

* Durch Weglassen
* Durch Kapselung -> Anwenden von Funktionen

## Mit welchen Artefakten spezifiziert man Schnittstellen (in Amdire)?

Funktional Hirarchy?
FIXME

## Wie würde man Schnittstellen spezifizieren?

Die Wahl der Abstraktioneebene ist arbiträr:

* Spezifizierung durch Implementierung
* API Definition mit Kontrakten
* Typisierte API
* ...

## Wann ist eine formale Semantik hilfreich?

Wenn sie einfach ist. Eine zu komplexe formalisierung ist bei normalen Softwareprojekten nicht gerechtfertigt. Grafische Modelle sind meist hilfreicher bei Software.

## Was ist ein Content Item bei Amdire?

Die weißen Kasten in Amdire

## Welche Layer gibt es in Amdire und wer arbeitet auf welchem Layer?

* Context Layer - Domänenexperte - "Es gibt Stakeholder xyz"
* Requirements Layer - Requirements Engineer "Wie nutzen die Stakeholder das System? Welche Stakeholder gibt es?"
* System Layer - System Architect/Entwickler

## Was sind Vor- und Nachteile von modellbasiertem RE?

FIXME
Vorteile:
* Garantiert richtiger Code

Nachteile:
* Overhead durch Wartbarkeit
* Overhead durch Collaboratives Arbeiten

## Welche informalen Modelle gibt es?

* User Stories
* Goal Models

# 6 Nicht-funktionale Anforderungen

Funktionale Anforderungen sind verfeinerbar. "Architektur muss gut sein" -> "Es muss high-cohersion gelten".

## Welche Aspekte hat Wartbarkeit?

* Modularität
* Information Hiding
* Low Coupling and High Cohersion

## Welche Arten von High Cohersion gibt es?

* Logical - "Komponenten machen ähnliche dinge"
* Temporal - "Komponenten machen Dinge zu ähnlichen Ziegen"
* Procedural - "Komponenten werden in gleicher Operation-Sequenz aufgerufen"
* Funktional - "Komponenten verfolgen gleiches Ziel"
* Informational - "Komponenten machen Dinge mit gleichen Informationen"

## Welche Arten von Systemen gibt es?

* Prozessgetrieben -> Versicherung
* Änderungsgetrieben -> Online Shop
* Cyber-Physical-System -> Rasenmäher

## Welche Arten von Sichen im Systemmodell gibt es?

* Usecases -> Interaktionsdiagramm
* Funktionshierarchie -> Schnittstellenmodell
* Komponentendiagramm -> Schnittstellenmodell
* Zustandsmaschinen
* ER-Diagramme -> Datenmodelle 


## Was bedeutet INVEST?
* I ndependent (of all others)
* N egotiable (not a specific contract for features)
* V aluable (or vertical)
* E stimable (to a good approximation)
* S mall (so as to fit within an iteration)
* T estable (in principle, even if there isn’t a test for it yet)


# 7 Formale Modelle

## Metafrage: Was ist die "richtige" Haltung für formale Modellierung?

* Man sollte NICHT modellbasiert entwickeln außer bei Cyber-Physischen Systemen
FIXME

## Was ist der Unterschied zwischen konkreter und abstrakter Syntax?

* konkret: if... then... else; while... do...
* Abstrakt: Es gibt Conditionals und Schleifen

## Welche konkreteren Metriken gibt es für Qualität?

* Explizit durch MCC, LCOM
* Maschinelles Lernen

## Was ist Agilität?

* Vereinigung von Planung und Produktion
* Der Kunde kauft die Definition von Andforderungen schrittweise durch Ausprobieren

## Wozu dient Indeterminismus in formalen Modellen?

* Zur Modelierung von unklaren Anforderungen
* ABER: Man weis oft nicht dass man etwas nicht weis -> Dadurch wird vergessen etwas indeterministisch zu modellieren

## Ist formalisierung von Unbekanntem nutzlos?

* Meist ja, da man zwar mehr Verständnis durch formalisierung erlangen kann, aber dadurch immernoch nicht klar wird was z.B. "schnell" bedeutet.
* Bei übermäßiger Formalisierung ist nicht mehr klar was die Anforderung war

# 8 Dokumentation und QA

## Was ist und was zählt genau zu interne und externe Qualität?

intern:
* interresierrt Entwickelr/Wartenden
* Kann man Anforderungen tracen

extern:
* interresiert Nutzer
* Ist das System schnell?

## Welchen Stakeholder interresiert interne und welchen externe Qualität?

* Ersteres den Entwickler
* Leetzeres Nutzer

## Welche Qualitätskriterien gibt es für Anforderungen nach IEEE?

* Konsistenz
* Vollständigkeit
* Korrektheit
* Eindeutigkeit
* Überprüfbarkeit
* Änderbarkeit
* Nachverfolgbarkeit
* Priorisierung
* Verständlichkeit

## Was versteht man unter einer korrekten Anforderung?

Man versteht darunter dass die Anforderung valide ist. Als im Sinne der Validierung.

## Ist der "eventuallity"-Operator in LTL/CTL sinnvoll?

FIXME

## Welche Aspekte gibt es bei Anforderungen

* syntaktischer Aufbau: Text, Tabelle...
* Inhalt: informell, formal

## Welche Arten von Qualitätssicherung (QA) gibt es?

* analytisch: Metriken, Testen, Review, Formale Verifikation...
* konstruktiv: User Story Template, Use Case Template, Keine Rekursionen verwenden, Keine Libraries einbinden...

## Was ist der Unterschied zwischen einer User Story und einem Usecase?

* User Story ist ein Artefakt in Scrum
* Ein Usecase wird in großen Projekten verwendet und ändern sich wenig

## Wo ist die Anforderung nach Qualität definiert?

* Explizit im Code kann man auf keine Zeile zeigen
* Qualität oft duch Metriken definiert 

# 9 Requirementsmanagement

## Was kann man alles tracen?

FIXME

## In wiefern kann man einzelne Artefakte tracen wie Architekturmodelle?

FIXME

## Welche konkreten Beispiele für Traceability gibt es?

FIXME
