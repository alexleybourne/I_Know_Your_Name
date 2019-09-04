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
    0.upto(1) do
        STDOUT.print "\r                                           " # Send return and six spaces
        sleep 0.5
        STDOUT.print "\r                 Press any key to continue."
        sleep 0.5
    end
end

# Very start of the game
# Picks 3 questions from a random set of questions and checks the user answers properly
# However these answers do not affect the users progression
# Just there to add a bit of creepyness
def first_questions
    types "Hello." 
    waits(1)
    types "Please answer the following questions with Yes or No." 
    waits(1)
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
            "Does your hair smell nice?",
            "Do you like the taste of Blood?",
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
        when "yes", "Yes","no", "No"
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
    types "Thank you." 
end

# This pulls a name from the list below and asks the user if this is their name
# The very rare case it is their name. It will take them on their own pathway
def random_name
    num = rand(0...6)
    names = [
        "Tim", "Mandy", "Karen", "Harold", "Adolf", "Ferdy"
    ]
    @fake_name = names[num]
    types "According to my calculations you name is #{names[num]}"
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


def print_fake
    puts @fake_name
end
