require_relative 'functions'
require_relative 'story'

class Main
attr_accessor :play, :fake_name, :return_value, :answered

@play = true
@fake_name = "empty"
@return_value = "empty"
@answered = false

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
#-------------------------------------------------------------------------------------------

while @play != false

    puts `clear` #Clears the screen

    logo #Displays logo from story

    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after

    introduction

    first_questions #Loads The first set of three questions

    random_name #Diplays the random chosen name as its guess
    waits(3)

    if @return_value == "yes"
        answer_reset
        types "Good #{@fake_name}."
    else
        answer_reset
        types "Well then."
        waits(2)
        types "What do you think your name is?"
    end

    waits(3)

    
    end_screen_options # Dipslays end screen text with options Yes and No to restart


end #End of While Loop
end #End of Class

#------------------------------------------------------------------------------------------

# The End!
# Thanks for having a look at my code
