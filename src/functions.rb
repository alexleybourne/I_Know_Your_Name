require 'test/unit'
require 'colorize'
require 'tty-cursor'
require 'tty-progressbar'
require 'io/console'

cursor = TTY::Cursor

# Prints the word(s) on letter at a time to look like it is
# Being typed
def types(word)
    word.each_char do |char|
        print char
        sleep(0.05)
    end
    puts  
end

def fast_types(word)
    word.each_char do |char|
        print char
        sleep(0.0001)
    end
    puts  
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
    types "#{file_name} files #{task} Complete."
end

# The End!
# Thanks for having a look at my code