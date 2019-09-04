require_relative 'functions'

def start_questions
    question_no = 1
    3.times do num = rand(0...3)
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
        case answer
        when "yes", "Yes","no", "No"
        else    
          types "Please answer properly."
        end
    end
end

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