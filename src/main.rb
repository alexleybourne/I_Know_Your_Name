require_relative 'functions'
require_relative 'story'

class Main
attr_accessor :play
@play = true

=begin
     ╦  ╦╔═╔╗╔╔═╗╦ ╦
     ║  ╠╩╗║║║║ ║║║║
     ╩  ╩ ╩╝╚╝╚═╝╚╩╝
 ╦ ╦╔═╗╦ ╦╦═╗  ╔╗╔╔═╗╔╦╗╔═╗
 ╚╦╝║ ║║ ║╠╦╝  ║║║╠═╣║║║║╣ 
  ╩ ╚═╝╚═╝╩╚═  ╝╚╝╩ ╩╩ ╩╚═╝


 A text based horror game where the computer becomes malicious
 As it reveals it's true intentions
 Made by Alex Leybourne @CoderAcademy 2019
=end

while @play != false

    puts `clear` #Clears the screen

    logo #Displays logo from story

    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after

    first_questions #Loads The first set of three questions

    random_name #Diplays the random chosen name as its guess
    waits(3)


    # End screen code
    # Dipslays end screen text with options Yes and No to restart
    # Yes restarts the main loop, No ends the program and a incorrect input loops
    # The end screen again
    end_screen_options
end
end

# The End!
# Thanks for having a look at my code
