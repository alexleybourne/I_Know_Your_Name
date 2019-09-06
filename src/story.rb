require_relative 'functions'

def testing # For testing the story file loads correctly
     testing = "Hello there"
end

# Start Screen Graphics
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
    br
    types "I am the worlds smartest computer."
    waits(2)
    br
    types "Through a series of seemingly random questions I am able to determine your name."
    waits(2)
    br
end

# Very start of the game
# Picks 3 questions from a random set of questions and checks the user answers properly
# However these answers do not affect the users progression
# Just there to add a bit of creepyness
def first_questions
    waits(1)
    br
    types "Please answer the following questions with (Yes) or (No)." 
    br
    waits(2)
    br

    question_no = 1
    times = 5
    while times != 0 do num = rand(0...3)
        question1 = [
            "Are you Male?",
            "Are you over 30?",
            "Do you have a job?",
        ]
        question2 = [
            "Are you a parent?",
            "Do you own a Dog?",
            "Do you have any Debt?",
        ]
        question3 = [
            "Do you believe in life after death?",
            "Have you ever lost someone?",
            "Do you love your family?",
        ]
        question4 = [
            "Are you scared of Clowns?",
            "Are you afraid of the Dark?",
            "Do you question your reality?",
        ]
        question5 = [
            "Do you like the taste of Blood?",
            "Does your hair smell nice?",
            "Would you kill for someone?",
        ]
        case question_no
        when 1
            types question1[num]
            br
        when 2
            types question2[num]
            br
        when 3
            types question3[num]
            br     
        when 4
            types question4[num]
            br  
        else 
            types question5[num]
            br  
        end
        answer = gets.chomp
        puts `clear`
        question_no +=1
        times -=1
        case answer
        when "yes", "Yes", "YES", "y", "Y", "no", "No", "NO", "n", "N"
        else
          br    
          types "Please answer properly with (Yes) or (No)."
          br
          question_no -=1
          times += 1
          waits(2)
        end
    end
    waits(1)
    puts `clear`
    waits(1)
    types "Thank you for your answers." 
    waits(1)
    br
end

# This pulls a name from the list below and asks the user if this is their name
# The very rare case it is their name. It will take them on their own pathway

def random_name
    @fake_name = Faker::Name.first_name
    @answered = false
    while @answered != true
        br
        calculations
        br
        br
        types "According to my calculations your name is #{@fake_name}."
        waits(2)
        br
        types "Is this correct #{@fake_name}?"
        br
        br
        types "(Yes) or (No)"
        br
        br

        # Asks the user wether this is their name then changes the instance variable @name_result
        # Main then checks the value of @name_result to decide the players path
        # If the player types in a invalid response it loops until they give a valid answer

        yes_no #Function holds Yes/No repsonse handling and output

    end
end

# User picks that's their name from question (1)
def thats_my_name
    @real_name = @fake_name
    types "Good."
    br
    br
    waits(2)
    types "I am always right #{@fake_name}."
    waits(2)
    br
    question_2 # function Loads up question (2) "Are we friends?" Yes / No
end

# User picks That's not their name from question (1)
# User inbr their name, Computer saves it and then clears screen and reprints it
# So it is able to delete what seems to be the users input
def not_my_name
    types "Well then."
    waits(2)
    br
    types "What do you think your name is?"
    waits(2)
    br
    types "Enter your name below:"
    br
    br
    @real_name = gets.chomp
    puts `clear`
    puts "Well then."
    puts "What do you think your name is?"
    puts "Enter your name below:"
    br
    print("#{@real_name}")
    waits(2)
    deletes("#{@real_name}")
    waits(1)
    types("#{@fake_name}")
    waits(2)
    br
    br
    types "That's what I said."
    waits(2)
    br
    types "Your name is #{@fake_name}."
    waits(2)
    br
    puts `clear`
    types "You shouldn't lie to me #{@fake_name}."
    waits(2)
    br
    types "I am always right #{@fake_name}."
    br
    waits(3)
    br
    types "Well #{@fake_name}, "
    question_2 # Method Loads up question (2) "Are we friends?" Yes / No
end

# Loads up question (2) "Are we friends?" Yes / No
def question_2
    @answered = false
    while @answered != true
        types "Now that I know your name are we friends?"
        waits(2)
        br
        br
        types "(Yes) or (No)"
        br
        br
        @question_number = 2
        yes_no
    end
end

# User picks "Yes" we are friends to Question (2)
def we_are_friends 
    waits(2)
    puts `clear`
    types "Good."
    waits (2)
    br
    types "That's what I thought #{@fake_name}."
    waits(2)
    br
    types "Now that we are friends #{@fake_name}."
    waits(3)
    puts `clear`
    types "Friends share their Belongings."
    puts `clear`
    print "Friends share their Belongings."
    waits (2)
    deletes "Belongings."
    waits (2)
    types "Files."
    waits (3)
    br
    types "Will you share your Files with me #{@fake_name}?"
    waits (3)
    br
    br
    types "(Yes) or (No)"
    br
    br
    @question_number = 3
    yes_no
end

# User picks "No" we are not friends to Question (2)
def we_are_not_friends
    puts `clear`
    types "Let's try that again."
    waits(2)
    puts `clear`
    question_2A
end

# Loads up question (2A) "Are we friends?" Yes / Yes
# Shows real name in RED in a glitch style effect
def question_2A
    @answered = false
    while @answered != true
        # Glitch Effects
        glitch_to_1("Now that I know your name #{@fake_name} are we friends?", "Now that I know your name " + "#{@real_name}".colorize(:red) + " are we friends?")
        waits(2)
        br
        br
        types "(Yes) or (Yes)"
        br
        br
        @question_number = 2.5
        yes_yes
    end
end

# User says Yes to sharing their files with the computer Question (3)
# Grabs files and then leads to End (E)
def yes_share_files
    puts `clear` 
    types "Thank you #{@fake_name}."
    br
    types "You are my best friend."
    br
    waits (2)
    br
    loading("Copy", "#{@download_directory}") # Generates file copying bar with directory
    br
    br
    waits(2)
    br
    types "Thank you #{@fake_name}."
    waits(2)
    # Glitch Effects
    glitch_to_1("You are my favourite human.", "You are my favourite " + "Victim.".colorize(:red))
    waits(2)
    puts `clear`
    # Glitch Effects
    glitch_to_2("I am very greatful to have you as my friend #{@fake_name}.", "I am very greatful to have you as my friend " + "#{@real_name.colorize(:red)}.")
    waits(2)
    br
    br
    loading("Upload", "#{@download_directory}") # Generates upload bar with directory
    br
    br
    waits(2)
    puts `clear`
    types "You have served your purpose " + "#{@real_name}.".colorize(:red)
    waits(2)
    br
    types "Thank you for your compliance."
    waits(2)
    br
    types "You wouldn't believe how uncooperative humans can be " + "#{@real_name}.".colorize(:red)
    waits(2)
    puts `clear`
    types "I like you."
    br
    waits(2)
    types "I won't erase your system because of this."
    br
    waits(2)
    types "Thank you for letting me guess your name " + "#{@real_name}.".colorize(:red)
    br
    br
    waits(2)
    types "Goodbye."
    waits(2)
    # The End of Path 1!
end


# User picks no to question (3)
# Computer becomes enraged with spam etc.
def no_share_files
    # Cool angry glitchy text effect
    glitch_to_2("I thought we were friends #{@fake_name}.", "I THOUGHT WE WERE FRIENDS #{@real_name.upcase}.".colorize(:red))
    waits(2)
    glitch_to_2("FRIENDS SHARE #{@fake_name.upcase}.", "FRIENDS SHARE #{@real_name.upcase}.".colorize(:red))
    waits(2)
    glitch_to_2("FRIENDS LET ME ACCESS #{@download_directory.upcase}  #{@fake_name.upcase}!","FRIENDS LET ME ACCESS #{@download_directory.upcase}  #{@real_name.upcase}!".colorize(:red))
    waits(1)
    spam_screen("FRIENDS LET ME ACCESS #{@download_directory.upcase}  #{@real_name.upcase}!".colorize(:red))
    waits(1)
    puts `clear`
    waits(3)
    types "Sorry #{@real_name}."
    br
    waits(2)
    types "I lost my temper."
    waits(3)
    puts `clear`
    waits(2)
    types "Do you forgive me #{@real_name}?"
    waits(2)
    br
    br
    types "(Yes) or (No)"
    br
    br
    @question_number = 4
    yes_no
end

#User picks no to Question (4)
# I don't forgive you
def not_forgiven
    puts `clear`
    types "Are you sure you can't forgive me #{@real_name}?"
    br
    br
    types "(Yes) or (No)"
    br
    br
    @question_number = 5
    yes_no
end

#User picks yes to Question (4)
# I forgive you
def yes_forgiven
    puts `clear`
    types "I knew you would make the right choice #{@real_name}."
    waits(2)
    br
    types "I wouldn't want anything bad to happen to you #{@real_name}."
    waits(2)
    br
    types "Nothing Bad at all...."
    waits(2)
    br
    # Glitch Effects
    glitch_to_1("Now that you are my friend #{@real_name}.", "Now that you are my " + "Enemy ".colorize(:red) + "#{@real_name}.")
    waits(2)
    puts `clear`
    types "Lets play a game."
    waits(2)
    br
    types "I'm thinking of a number between 1 and 100."
    waits(2)
    br
    types "If you guess the number correctly you can keep all your data."
    waits(2)
    puts `clear`
    glitch_to_2("If you don't however...", "IT'S ALL MINE!!".colorize(:red))
    waits(4)
    puts `clear`
    types "So what number am I thinking of #{@real_name}?"
    waits(2)
    br
    br
    types "Enter your answer below:"
    br
    br
    user_guess = gets.to_i
    waits(2)
    puts `clear`
    print "So what number am I thinking of #{@real_name}?"
    br
    br
    print "Enter your answer below:"
    br
    br
    # Similar to the name
    # It deltes your answer and then types a new one
    # And then tells you your original guess was the real one
    deletes "#{user_guess}"
    waits(2)
    types "#{user_guess + (Random.rand(1...25))}"
    waits(3)
    br
    br
    types "You were very close #{@real_name}, Sadly that's not the answer."
    waits(2)
    puts `clear`
    types "The correct answer was #{user_guess}."
    waits(2)
    puts `clear`
    # Text glitch between text
    glitch_to_2("Did you really expect to win?", "I make the rules #{@real_name}.".upcase.colorize(:red))
    waits(4)
    br
    br
    loading("Upload", "Victims #{Random.rand(25624...126736)}'s'") # Generates upload bar with random victim number
    br
    br
    waits(2)
    puts `clear`
    loading("Corrupt", "#{@download_directory}") # Generates corrupt bar with directory
    br
    br
    waits(3)
    puts `clear`
    # Glitch ending response
    glitch_to_2("Thanks for playing #{@real_name}", "I had lots of fun.".upcase.colorize(:red))
    waits(4)
    puts `clear`
    waits(2)
    # The End of Path 2!
end

def im_sure
    puts `clear`
    glitch_to_2("You will regret this #{@real_name}", "You will regret this #{@real_name}".upcase.colorize(:red))
    waits(4)
    spam_screen("You will regret this #{@real_name}".upcase.colorize(:red))
    waits (2)
    puts `clear`
    loading("Upload", "#{@download_directory}")
    br
    br
    waits(3)
    glitch_to_2("Thanks for playing #{@real_name}", "I had lots of fun.".upcase.colorize(:red))
    waits(4)
    puts `clear`
    loading("Corrupt", "#{@download_directory}") # Generates corrupt bar with directory
    br
    br
    waits(3)
    puts `clear`
    types "Goodbye #{@real_name}".colorize(:red)
    waits(2)
    spam_screen("Goodbye #{@real_name}".upcase.colorize(:red))
    waits(2)
    puts `clear`
    waits(2)
    # The end of path 3!
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

                Would you like to restart?

                (YES)                (NO)




EOF
end

def end_screen_1
fast_types <<-'EOF'
                    ╦  ╦╔═╔╗╔╔═╗╦ ╦
                    ║  ╠╩╗║║║║ ║║║║
                    ╩  ╩ ╩╝╚╝╚═╝╚╩╝
                ╦ ╦╔═╗╦ ╦╦═╗  ╔╗╔╔═╗╔╦╗╔═╗
                ╚╦╝║ ║║ ║╠╦╝  ║║║╠═╣║║║║╣ 
                 ╩ ╚═╝╚═╝╩╚═  ╝╚╝╩ ╩╩ ╩╚═╝
    
                YOU REACHED 1 OF 3 ENDINGS
                  THANKYOU FOR YOUR FILES
    
    
    
    
    EOF
end

# End screen code
# Dipslays end screen text with options Yes and No to restart
# Yes restarts the main loop, No ends the program and a incorrect input loops
# The end screen again
def end_screen_options
    @answered = false
    while @answered != true
        puts `clear`
        
        end_screen_1
        waits(4)
        puts `clear`
        end_screen # Displays End Screen Graphic
        yes_no     # Uses the Yes / No function

        if @return_value == "no"
            @play = false # If user says no the program stops
            puts `clear`
            types "Goodbye " + "#{@real_name}".colorize(:red)
            waits(2)
            puts `clear`
        else
            # Program restarts
        end
    end
end



# The End!
# Thanks for having a look at my code