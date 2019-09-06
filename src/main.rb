require_relative 'functions'
require_relative 'story'

class Main
attr_accessor :play, :fake_name, :real_name, :question_number, :return_value, :answered, :download_directory

# Values used between all files to allow cross commnuication and saved values to be
# Accessed by other functions etc.

@play = true
@fake_name = "empty"
@real_name = "empty"
@question_number = 0
@return_value = "empty"
@answered = false
@download_directory = ""


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

# Check the user is playing.
# Mainly used to restart game if user selects play again at end screen
while @play == true

    puts `clear` #Clears the screen
    get_directory #Grabs and saves the directory

    logo #Displays logo from story

    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after

    introduction # Loads introduction

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
    if @return_value == "yes" && @question_number == 2
        answer_reset
        we_are_friends # Loads up the yes text
    elsif @question_number == 2
        answer_reset
        we_are_not_friends # Loads up the no repsonse
    else
    end

    # Answer for computer forcing you to be friends Question (2A)
    if @return_value == "yes" && @question_number == 2.5
        answer_reset
        we_are_friends # Loads up the yes text
    elsif @question_number == 2.5
        answer_reset
        we_are_friends # Loads up the yes text anyways
    else
    end

    # Will you share your files with me? Question (3)
    if @return_value == "yes" && @question_number == 3
        answer_reset
        yes_share_files # Loads up the yes progression
    elsif @question_number == 3
        answer_reset
        no_share_files # Loads up the no progression
    else
    end

    # Computer asks 'Do you forgive Me?' (4)
    if @return_value == "yes" && @question_number == 4
        answer_reset
        yes_forgiven # Loads up the yes progression
    elsif @question_number == 4
        answer_reset
        not_forgiven # Loads up the no progression
    else
    end

    # Computer asks 'Are you sure you Don't forgive Me?' (5)
    if @return_value == "yes" && @question_number == 5
        answer_reset
        im_sure # Loads up the yes progression
    elsif @question_number == 5
        answer_reset
        yes_forgiven # Loads up the no progression
    else
    end
    
    waits(3)

    end_screen_options # Dipslays end screen text with options Yes and No to restart


end #End of While Loop
end #End of Class

#------------------------------------------------------------------------------------------

# The End!
# Thanks for having a look at my code
