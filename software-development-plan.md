![I Know Your Name logo](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Logo-Gif.gif)

## I KNOW YOUR NAME - Software Development Plan
###### By Alex Leybourne
----
### Statement of Purpose and Scope:

I have recently been watching many horror movies and that naturally gave me the idea that I wanted ot create a horror based text game. I wanted to also stand out and make something unique to leave a lasting impression. The overall purpose being to provide a fun and unique experience to the player / user. That will also get them thinking about this new typeof genre and about AI and how close we are to this level of artifical intelligence. 

I am developing this game as I have not seen many games fill this new niche genre of horror games. And I find them to be quie fun and unique, so adding another to the mix will be a welcomed addition in my opinion.  Because it is a niche genre I doubt it has been done before for this assignment and will give me a chance to make something new and fun that will stand out. The game also is very open to many possibilities meaning I have less confines to deal with allowing me to add functionality and other goodies as I please.

The game will begin as an oddly named 'name guessor' that asks a series of questions that become more odd as your progress. Finally it loads and pops out a name that it believes is yours. Funnily enough its wrong and you let it know and the computer doesn't seem to like that. You then proceed down a wormhole of questions and antics as the computer becomes more cunning and ominous as it slowly reveals it's true intentions. To take your precious files by one way or another.

The target audience are gamers with some tech knowledge to be able to run the game and understand what is "Happening" to their system as they progress. 

They will install the application by downloading the file, unzipping and then using bundler to install the gems / dependencies. It will load up and they will interact with the terminal console progressing through and answering the computers questions . Making their way through the multiple paths until the computer has had enough and they reach the end.

----
### Features:

### Computers ability to type and delete as it pleases
This really adds to the game as rather than the text just popping up it prints left to right, to look as if it is being typed out by a person. Every message sent by the computer to the user is done in this way to add the effect / idea of the computer being self aware and intelligent. The computer can also delete the users inputs by saving what the user types into a variable and then printing the screen to look exactly the same as it did before in a millisecond so the user is none the wiser. This allows the computer to move the cursor backwards through the use of the TTY-Cursor gem and delete characters one by one. The computer is able to type forwards and delete backwards the correct amount of time by storing the word to delete or type in a string and looping the process of typing or deleting each character to the number of character the string contains in total.

### Computers question and user input function

The computer asks a series of questions that mostly require a "yes" or "no" input by the user. Through the use of being able to call the function to prompt the users input and then check wether they input a variance of "yes" or "no". Variance being either capitalised, one letter or any other way to format those words. Using if, elsif and else statements it decides which word you have typed and sends back a response on how to proceed. If the user does not input a valid response the computer will loop through telling you to try again and produce the options and input again.

### Text Glitches between words and colours

One key part to the ruby application is they glitch effects the computer text does as it becomes angrier and more evil towards the user. Words will glitch between themselves and other words and sometimes be replaced with all capitalized variants or be turned red. This is done using a function that accepts two strings; the first line to print and the line to glitch it to. The function then switches between the two by clearing and sleeping for odd amounts to produce a glitch like animation. Originally I had typed this out fully for each glitch until I managed to make it DRY and create a once off function to repeat the process for multiple scenarios. 

---
### User Interaction and Experience:

The user will be welcomed witht the applications logo and instructions to press any key to continue. 

![Start Screen](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Start_Screenshot.png)		

From there the user will be greeted by the computer and tell the user it will be asking it a series of questions. It asks the user to repsond to each question with either (Yes) or (No). Assuming the user knowshow to use the command prompt / temrinal (How else could they get this far?) They will know to hit enter to submit their response. 
The games input through its entirety evolves aorund this system. If the user enters something other than what is asked for / specified by the computer. The user will be told that it is not a valid response and to try again. The computer will then reload that question or move to another depending on where the user is currently.

----
### Control Flow Diagram:

I Know Your Name Development Flowchart:

- [Flow Chart](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Flowchart.pdf)

![I Know Your Name Flowchart](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Flowchart-jpg.jpg)

----
### Code Refactoring / DRY Principle  Example:
- [Example 1](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Code-Dry-Example1.jpg)

- [Example 2](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Code-Dry-Example2.jpg)

![Example 1](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Code-Dry-Example1.jpg)

![Example 2](https://github.com/alexleybourne/I_Know_Your_Name/blob/master/Docs/Alex-Leybourne-IKYN-Code-Dry-Example2.jpg)

---
