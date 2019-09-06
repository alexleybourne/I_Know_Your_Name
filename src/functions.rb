require 'test/unit'
require 'colorize'
require 'tty-cursor'
require 'tty-progressbar'
require 'io/console'
require 'faker'

cursor = TTY::Cursor

def br   # Easy break / line space shortcut
    puts 
end

# Prints the word(s) on letter at a time to look like it is
# Being typed
def types(word)
    word.each_char do |char|
        print char
        sleep(0.05)
    end 
end

# Faster Version
def fast_types(word)
    word.each_char do |char|
        print char
        sleep(0.0001)
    end
    br  
end

# Resets the answer value
# Used after each question being successfully answered
def answer_reset
    @answered = false
    @return_value = "empty"
end

# Yes or no method reduces code and follows DRY
# The code takes in a Yes or No repsonse and outbr the result for use
# If the player types in a invalid response it loops until they give a valid answer
def yes_no 
    answer = gets.chomp
    case answer
    when "yes", "Yes", "YES", "y", "Y"
        waits(2)
        puts `clear`
        @return_value = "yes"
        @answered = true

    when "no", "No", "NO", "n", "N"
        waits(2)
        puts `clear`
        @return_value = "no"
        @answered = true
    else
        puts `clear`
        types "Invalid Repsonse."
        waits(1)
        br
        br
        types "Let's try that again."
        waits(2)
        puts `clear`
    end
end

# For when the computer gets a bit pushy
def yes_yes 
    answer = gets.chomp
    case answer
    when "yes", "Yes", "YES", "y", "Y"
        waits(2)
        puts `clear`
        @return_value = "yes"
        @answered = true
    else
        puts `clear`
        types "Invalid Repsonse."
        waits(1)
        br
        br
        types "Let's try that again."
        waits(2)
        puts `clear`
    end
end

# Goes to the word(s) and deletes it right to left to look like
# The computer is pressing delete / backspace
def deletes(word)
    word.each_char do |char|
        print TTY::Cursor.backward(1)
        print TTY::Cursor.clear_char(1)
        sleep(0.06)
    end
end

# Multiple verisons of wait time to save me typing 'sleep(3.0)' etc. each time
# Variants make it quick to pick how long I want to pause / delay 
def waits(time)
    case time
    when 4
        sleep(3.0)
    when 3
        sleep(1.5)
    when 2
        sleep(1.0)
    when 1
        sleep(0.4)
    else
        sleep(0.1)
    end
end


# Finds the current working directory
# Then splits it by "/" 's and deletes other words
# Puts it back together and returns something smaller
# aka /Users/AlexLeybourne/
def get_directory 
    directory = Dir.pwd.to_s
    directory = directory.split('/')
    length = directory.length
    length.to_i
    length = length - 3
    length.times {directory.pop}
    directory = directory.join("/")
    directory = directory + "/"
    @download_directory = directory
end

# Glitch Effect between two texts
# Does glitch naimation but ends on new text
def glitch_to_2(sentence_1, sentence_2)
    puts `clear` 
    types sentence_1
    sleep(0.05)
    puts `clear`
    print sentence_2
    sleep(0.01)
    puts `clear`
    print sentence_1
    sleep(0.4)
    puts `clear`
    print sentence_2
    sleep(0.03)
    puts `clear`
    print sentence_1
    sleep(0.5)
    puts `clear`
    print sentence_2
    sleep(0.06)
    puts `clear`
    print sentence_1
    sleep(0.4)
    puts `clear`
    print sentence_2
    sleep(0.03)
    puts `clear`
    print sentence_1
    sleep(0.1)
    puts `clear`
    print sentence_2
    sleep(0.06)
    puts `clear`
    print sentence_1
    sleep(0.2)
    puts `clear`
    print sentence_2
end

# Does glitch animation but back to where it started
def glitch_to_1(sentence_1, sentence_2)
    puts `clear` 
    types sentence_1
    sleep(0.05)
    puts `clear`
    print sentence_2
    sleep(0.05)
    puts `clear`
    print sentence_1
    sleep(0.4)
    puts `clear`
    print sentence_2
    sleep(0.2)
    puts `clear`
    print sentence_1
    sleep(0.05)
    puts `clear`
    print sentence_2
    sleep(0.3)
    puts `clear`
    print sentence_1
end

# Fills the screen with the message 300 times
def spam_screen(sentence_to_spam)
    100.times do
        puts " #{sentence_to_spam} "
        sleep(0.01)
    end
    200.times do
        print " #{sentence_to_spam} "
        sleep(0.01)
    end
end

# Simple loading bar for calculations at start
def calculations
    bar = TTY::ProgressBar.new("Calculating [:bar] :percent", total: 30)
    30.times do
    sleep(0.1)
    bar.advance(1)
    end
    br
    types"Calculation Complete!"
end

# Creates a fake loading bar that allows you to write the task eg: download, upload & corrupt
# It generate a random amount between 50gbs or 150gbs
def loading(task, file_name)
    types "#{task}ing #{file_name} files "
    br
    bar = TTY::ProgressBar.new "[:bar] :percent :current_byte/:total_byte" do |conf|
        conf.total = (Random.rand(53687091200...161061273600))
    end
      # Generates random progression speeds of the bar to make it look slightly more realistic
      # Progresses in random intervals between 0.5gbs and 2gbs
      # Still has mad speeds despite Australian internet lol.
    until bar.complete? == true
        sleep(Random.rand(0.05...0.2))
        bar.advance(Random.rand(536870912...2147483648))
    end
    # types out eg: (System Root) files (Download) Complete.
    br
    br
    types "#{file_name} files #{task} Complete."
end

# The End!
# Thanks for having a look at my code