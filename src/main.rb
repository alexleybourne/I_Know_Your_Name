require_relative 'functions'
require_relative 'story'

class Main
attr_accessor :play, :fake_name, :real_name, :return_value, :answered

@play = true
@fake_name = "empty"
@real_name = "empty"
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

while @play == true

    puts `clear` #Clears the screen

    logo #Displays logo from story

    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after

    introduction

    first_questions #Loads The first set of three questions

    random_name #Diplays the random chosen name as its guess
    waits(3)

    # Users Answer to if the random name is correct or not
    if @return_value == "yes" 
        answer_reset
        thats_my_name # Runs next story part
    else
        answer_reset
        not_my_name # Runs next story part
    end

    # Answer for computer asking if you are friends Question (2)
    if @return_value == "yes"
        answer_reset
        we_are_friends # Loads up the yes text
    else
        answer_reset
        we_are_not_friends # Loads up the no repsonse
    end

    # Answer for computer forcing you to be friends Question (2A)
    if @return_value == "yes"
        answer_reset
        we_are_friends # Loads up the yes text
    else
        answer_reset
        we_are_friends # Loads up the yes text anyways
    end
    
    
    
    waits(3)



    
    end_screen_options # Dipslays end screen text with options Yes and No to restart


end #End of While Loop
end #End of Class

#------------------------------------------------------------------------------------------

# The End!
# Thanks for having a look at my code
