require_relative 'functions'
require_relative 'story'

class Main
attr_accessor :play, :name_result
@play = true
@name_result = "empty"

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

    introduction

    first_questions #Loads The first set of three questions

    random_name #Diplays the random chosen name as its guess
    waits(3)

    if @name_result == "yes"
        types "Good."
    else
        types "Well then."
        waits(2)
        types "What do you think your name is?"
    end



    
    end_screen_options # Dipslays end screen text with options Yes and No to restart
end
end

# The End!
# Thanks for having a look at my code
