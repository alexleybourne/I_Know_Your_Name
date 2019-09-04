require_relative 'functions'
require_relative 'story'

play = true

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

while play != false

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
    ended = false
    while ended != true
        puts `clear`
        end_screen

        answer = gets.chomp
        case answer
        when "yes", "Yes", "y", "Y"
            types "Have fun."
            ended = true
        when "no", "No", "n", "N"
            types "Goodbye."
            waits(2)
            puts `clear`
            play = false
            ended = true
        else
            types "Invalid Repsonse."
        end
    end
end


# The End!
# Thanks for having look at my code
