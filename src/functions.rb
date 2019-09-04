require 'test/unit'
require 'colorize'
require 'tty-cursor'
require 'tty-progressbar'
require 'io/console'

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
    bar = TTY::ProgressBar.new "#{task}ing #{file_name} files [:bar] :percent :current_byte/:total_byte" do |conf|
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