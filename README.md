# **Terminal Application - Daniel Waldow**

### Github Repository: www.example.com

<br>

## **Software Development Plan:**

<br>

### **R5 - Purpose & Scope:**

<br>

Overview:
- The schoolyard classic, '*Scissors, Paper, Rock*' was a great past-time before the smartphone era
- Kids used to engage with each other in a simple game of wits, fist-pumping the air for a chance at victory

Problem:

- With the introduction of smartphones and their ubiquitous adoption in moden schoolyards, a legacy is at risk of becoming antique 
- To combat this, I have undertaken arguably one of the most important tasks in gaming history... to digitise '*Scissors, Paper, Rock*'
- This alone won't be enough, however. To succeed, I have made the executive decision to rebrand the classic to appeal to a younger audience
- I give you: '*Sith-Lord, Jedi, Ewok*'

Target Audience:
- '*Sith-Lord, Jedi, Ewok*' is a game targeting younger audiences who may not have grown up playing '*Scissors, Paper, Rock*', but will also more broadly appeal to fans of the Star Wars franchise

Usage:
- Users of '*Sith-Lord, Jedi, Ewok*' will be given the option to play the rebranded classic against a computer player (AI) and save highscores for bragging rights amongst their friends

<br>

### **R6 - Features:**

<br>

Top 3:
- Computer Player (AI):
  - a
- Leaderboard:
  - a
- Show Rules:
  - a

All Features:
- Main Menu
- Coloured Text
- Ascii Heading
- Player Selection Menus
- Display Rules
- Quote Generator
- Leaderboard
- Save file for Leaderboard high scores
- Round Tracker
- Player Name saved in Leaderboard
- Options sub-menu
- Screen clear on each new menu
- Exit check?

<br>

### **R7 - User Interaction Outline:**

<br>

- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user

<br>

*Note: The term user refers to anyone interacting with any part of the application excluding the 'Play Game' functionality. In this mode, users are referred to as players.*

Main Menu:
- Upon launch, users will see a welcome screen which serves as the Main Menu
- Undeneath the heading banner users are asked what they would like to do
- Next to this is highlighted help text describing how to access each of the menu options (Press ↑/↓ arrow to move and Enter to select)
- The user is presented with 4 options in the Main Menu:
  - Play Game
  - Read Rules
  - View Leaderboard
  - Exit

Start New Game:
  - When a player chooses the 'Play Game' option they will be presented with a new game, which displays:
    - Round number
    - Instruction for player to choose a faction to start a new match
    - Faction options: Jedi, Sith or Ewok
  - After every match, the player will be presented with the results:
    - Win: 
      - "You won!" message displayed
      - "Round saved successfully" message displayed
      - Player is then prompted to press any key to start a new round
    - Draw: 
      - "You drew" message displayed
      - "Round saved successfully" message displayed
      - Player is then prompted to press any key to start a new round
    - Loss:
      - "You lost" message displayed
      - "Round saved successfully" message displayed 
      - Player is prompted to press any key to continue
      - Player is then prompted to enter their name (this will be used to display their score in the Leaderboard)
      - Thanks for playing message displayed, followed by score successfully saved message
  - Once the game is finished due to a loss, the player will then be presented with the Options Sub-Menu, displaying:
    - Iconic Star Wars quote
    - Options menu with the following options:
      - Start New Game (same as choosing Play Game from the Main Menu)
      - Exit to Main Menu

Read Rules:
  - When a player chooses the 'Read Rules' option they will be presented with a description of the rules for 'Sith-Lord, Jedi, Ewok'
  - The user is then presented with the Options Sub-Menu (see 'Start New Game', section 3)

View Leaderboard:
  - When a player chooses the 'View Leaderboard' option they will be presented with:
    - A table showing a list of scores for games submitted by previous players OR
    - If there are no scores to display, the message "No scores on the leaderboard to show!" will be displayed
    - The user is then presented with the Options Sub-Menu (see 'Start New Game', section 3)
  - Displays Highscores as a table including: Name, score, number of wins/draws, and most picked faction
  - User is given 2 options: Start New Game or Exit to menu
- Exit:
  - Include are you sure check before exiting? with Y/N
- TTY Prompt (on selection before pressing 'Enter', tooltip-style help will be displayed)

<br>

### **R8 - Control Flow:**

<br>

![App Flowchart](docs/img/flowcharts/app-game-overview-flowcharts_white.png)

- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.

<br>

### **R9 - Implementation Plan:**

<br>

- Write out list here or link to Trello board?

<br>

### **R9 - Help Documentation:**

<br>

- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

<br>

<br>

### *References:*