![I Know Your Name logo](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Logo-Gif.gif)

## I KNOW YOUR NAME
![GitHub followers](https://img.shields.io/github/followers/alexleybourne?style=social)

![Twitter Follow](https://img.shields.io/twitter/follow/AlexLeybourne?style=social)

Source code: [https://github.com/alexleybourne/I_Know_Your_Name](https://github.com/alexleybourne/I_Know_Your_Name)

Files:
- [Help](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/help.md)
- [Development log](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/development-log.md)
- [Software Development Plan](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/software-development-plan.md)
- [Flow Chart](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Flowchart-jpg.jpg)

## Description
**‘I Know Your Name’** Is a text based horror game inspired by a new genre of horror has become popular with the concept of a game becoming self aware.  The game has been coded with Ruby using multiple Gems, custom methods, modules and following the DRY (Don't Repeat Yourself) principle.

This Terminal game take the classic text adventure game formula and flips it on its head. With the computer becoming more and more evil as you progress. Your choices change the outcome of the game based on how you interact with the computer.

## Installation Instructions

1. Follow these instructions to [download and install](https://www.ruby-lang.org/en/documentation/installation/) Ruby on your computer. 
2. Download and unzip the project files onto your computer. 
3. On the terminal command line, navigate to the src folder. Install the bundler gem (if you haven't already) 
```
> install bundler
```
4. Ask bundle to install the gems that we use for the program. 
```
> bundle install 
```
5. In the terminal command line, navigate to the src folder by inputting the command 
  ```
  > cd (src - where you saved the files) 
  ```
6. Input the below command in the terminal command line.  
  ```
  > ruby main.rb
  ```
7. If you get an error message try updating your gems
  ```
  > gem update --system
  ```
8. Run program using step 6 again. 


## Motivation
I have recently been watching many horror movies and that naturally gave me the idea that I wanted ot create a horror based text game. I wanted to also stand out and make something unique to leave a lasting impression.

I have not seen many games fill this new niche genre of horror games so adding naother to the mix will be a welcomed addition. 

The target audience are gamers with some tech knowledge to be able to run the game and understand what is "Happening" to their system as they progress. They will interact with the terminal console answering the computers questions and making their way through the multiple paths until the computer has had enough and they reach the end.

I also played with other ideas in my brainstorming process:
- Recreating **Snake** the classic hit arcade game. However this would be a very large project to undertake in such a short time and would lack originality.

- A **Calendar App** That would allow the user to input an event, description and date. The information would be stored in a local text document. The app will check for the current date on the users machine to display the correct day and any events on that day. With a search feature that will allow the user to search a date and see if they have anything on there.

- A **ASCII Text Generator**, which would take a users input as a string and then allow them to pick a text style from a set list. Then grab each letter from the users string and print the correct ASCII character in order. I felt this seemed quite boring and wouldn't have much functionality.

In the end I am happy with my choice to follow through on the text based horror. This allowed me to create multiple creative pathways, challenge myself with more functions and combine my passion for fun horror.

## Features and Functionality
*I Know Your Name* is a single-player text game where the user either inputs or selects a pre defined input in response to the computers questions.

The game begins with the Title loading and then the computer starts asking a series of odd questions and then attempting to guess your name.

The users choices will affect the overall outcome. Each pathway is slightly different and results in one of three possible endings.

Will you escape the computers demands?

### Current features:
***Warning Spoilers***

- Prints text left to right in a typing format
- Randomly generated names from a database (faker)
- Receives user text input to decide the story pathways
- Allows the computer to move the cursor and delete text
- Saving user inputs for later use
- Random generators pick questions from a string to make each user experince unique
- Glitch text effects that flicker between words and colours
- Animated loading bars to emulate file uploads, downloads and corruption
- Ability to play again once the game has ended
- ASCII art logo for start and end page
- Fullscreen glitch animations


### Possible features:
- Logo animation when game starts
- Sound bytes to play as th story progresses, such as glitch sounds, error sounds and even a creepy computer voice
- The end screen displays a quote about Artificial intellegence chosen from an array
- The computer can move the users computer mouse to mess with them
- The computer can send notifications to the users computer

## Code Structure


### Gems used:

I Know Your Name makes use of numerous gems to enhance the user experience and add more features to the end product.
* [Bundler](https://bundler.io/) Is used to handle all Gem installations. To provide an easy setup for the user as all version and dependencies are controlled through it and saved in the gem & gem lock files.
* [Test-Unit](https://github.com/test-unit/test-unit) Was used to assist in Test Driven Development.
* [IO-Console](https://github.com/ruby/io-console) Allows the game to be started by pressing any key. 
* [Faker](https://github.com/faker-ruby/faker) Provides the computer with a large databse of names for its name generation. 
* [Colorize](https://github.com/fazibear/colorize) Enables the use of coloured outputs in the Terminal.
* [TTY-Cursor](https://github.com/piotrmurach/tty-cursor) To enable the computer to easily navigate the console and delete lines.
* [TTY-ProgressBar](https://github.com/piotrmurach/tty-progressbar) Which enables the ability to easily display and create progress bars. (The file transfers)


## Design and Implementation

*I Know Your Name* was created in three days by Alex Leybourne as part of Ruby Assessment at [Coder Acadmey](https://coderacademy.edu.au/)

In the early stages of planning I brainstormed potential ideas and functionality I could incorporate within them. I then settled on the text based horror idea and began forminga basic strucutre of what to do, features, user stories etc. in [My Trello Board](https://trello.com/b/c30XUBpO/i-know-your-name-ruby-app).

I then got to work on the flowchart of the app to layout the story line and the paths the user can take. How the computer will interact with them and the way it will all work. 

Flowchart of story pathways and functions:

![I Know Your Name Flowchart](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Flowchart-jpg.jpg)


## Project Timeline & Planning Progress
The planning process involved mainly the flowchart as shown above. It went through many itterations and changes. That mainly involved myself writing over it in red pen on the fly as I worked on the project.
The initial planning and pre visualization of the program was mostly done the first day after getting the project.  The project was managed through Trello and updated as I progressed. My Trello board listed all tasks that needed to be completed, features, gems, user stories, bugs etc.


A full record of the planning can be found here:

- [Development Log](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-development-log.md)

* [My Trello Board](https://trello.com/b/c30XUBpO/i-know-your-name-ruby-app).

![Trello Board Screenshot](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Trello_Screenshot.png)


## Testing
This application was developed following the rules of Test Driven Development. Each function was made to pass a very specific test case and then edited / refactored to be made as small and simple as possible.

A key part to this testing was the use of the  [Test-Unit Gem](https://github.com/test-unit/test-unit) . 

![Testing Screenshot](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Testing_Screenshot.png)

Other testing was done by myself trying out each possible function / input in numerous ways. I then got fellow students, friends and fmaily to try out my program and report back any bugs and potential upgrades / changes.


## Copyright, ethical, social issues

Being a text based game. It did not raise any concerns, however the nature of the game could make some users believe their files are actually at risk. The potential need for a disclaimer was thought of. But was deemed unnecessary due to the application being labled as a game and the user can easily see after that none of their files are deleted.

Copyright issues were not a concern as the idea is completely original and does not take anything from other games.

## License

**Copyright (c) 2019 Alex Leybourne** for [Coder Academy](https://coderacademy.edu.au).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distributeand to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

