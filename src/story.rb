require_relative 'functions'


# End Screen Graphics
def logo
    fast_types <<-'EOF'
                    ╦  ╦╔═╔╗╔╔═╗╦ ╦
                    ║  ╠╩╗║║║║ ║║║║
                    ╩  ╩ ╩╝╚╝╚═╝╚╩╝
                ╦ ╦╔═╗╦ ╦╦═╗  ╔╗╔╔═╗╔╦╗╔═╗
                ╚╦╝║ ║║ ║╠╦╝  ║║║╠═╣║║║║╣ 
                 ╩ ╚═╝╚═╝╩╚═  ╝╚╝╩ ╩╩ ╩╚═╝


                 
    EOF
    
    fast_types "                Press any key to continue."
    
end

# Basic introduction text
def introduction
    types "Welcome."
    waits(2)
    types "I am the worlds smartest computer."
    waits(2)
    types "Through a series of seemingly random questions I am able to determine your name."
    waits(2)
end

# Very start of the game
# Picks 3 questions from a random set of questions and checks the user answers properly
# However these answers do not affect the users progression
# Just there to add a bit of creepyness
def first_questions
    waits(1)
    types "Please answer the following questions with Yes or No." 
    waits(2)
    puts

    question_no = 1
    times = 3
    while times != 0 do num = rand(0...3)
        question1 = [
            "Do you believe in life after death?",
            "Have you ever lost someone?",
            "Do you love your family?",
        ]
        question2 = [
            "Are you scared of Clowns?",
            "Are you afraid of the Dark?",
            "Do you question your reality?",
        ]
        question3 = [
            "Do you like the taste of Blood?",
            "Does your hair smell nice?",
            "Would you kill for someone?",
        ]
        case question_no
        when 1
            types question1[num]
        when 2
            types question2[num]
        else
            types question3[num]     
        end
        answer = gets.chomp
        puts `clear`
        question_no +=1
        times -=1
        case answer
        when "yes", "Yes", "y", "Y", "no", "No", "n", "N"
        else    
          types "Please answer properly with Yes or No."
          puts
          question_no -=1
          times += 1
          waits(2)
        end
    end
    waits(1)
    puts `clear`
    waits(1)
    types "Thank you for your answers." 
end

# This pulls a name from the list below and asks the user if this is their name
# The very rare case it is their name. It will take them on their own pathway

def random_name
    num = rand(0...6)
    names = [
        "Tim", "Mandy", "Karen", "Harold", "Adolf", "Ferdy"
    ]
    @fake_name = names[num]
    answered = false
    while answered != true
        types "According to my calculations your name is #{@fake_name}."
        waits(2)
        puts
        types "Is this correct #{@fake_name}?"
        waits(2)
        types "(Yes) or (No)"
        puts

        # Asks the user wether this is their name then changes the instance variable @name_result
        # Main then checks the value of @name_result to decide the players path
        # If the player types in a invalid response it loops until they give a valid answer


        answer = gets.chomp
        case answer
        when "yes", "Yes", "y", "Y"
            waits(2)
            puts `clear`
            @name_result = "yes"
            answered = true

        when "no", "No", "n", "N"
            waits(2)
            puts `clear`
            @name_result = "no"
            answered = true
        else
            types "Invalid Repsonse."
            waits(1)
            types "Let's try that again."
            waits(2)
            puts 'clear'
        end
    end
end



# End Screen Graphics
def end_screen
fast_types <<-'EOF'
                ╦  ╦╔═╔╗╔╔═╗╦ ╦
                ║  ╠╩╗║║║║ ║║║║
                ╩  ╩ ╩╝╚╝╚═╝╚╩╝
            ╦ ╦╔═╗╦ ╦╦═╗  ╔╗╔╔═╗╔╦╗╔═╗
            ╚╦╝║ ║║ ║╠╦╝  ║║║╠═╣║║║║╣ 
             ╩ ╚═╝╚═╝╩╚═  ╝╚╝╩ ╩╩ ╩╚═╝

             Woud you like to restart?

             (YES)                (NO)




EOF
end

# End screen code
# Dipslays end screen text with options Yes and No to restart
# Yes restarts the main loop, No ends the program and a incorrect input loops
# The end screen again
def end_screen_options
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
            @play = false
            ended = true
        else
            types "Invalid Repsonse."
        end
    end
end


def print_fake
    puts @fake_name
end

# The End!
# Thanks for having a look at my code