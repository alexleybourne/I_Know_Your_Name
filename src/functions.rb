require 'test/unit'
require 'colorize'
require 'tty-cursor'
require 'tty-progressbar'

cursor = TTY::Cursor

# Prints the word(s) on letter at a time to look like it is
# Being typed
def types(word)
    word.each_char do |char|
        print char
        sleep(0.04)
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

def loading(file_name)
    bar = TTY::ProgressBar.new "downloading #{file_name} [:bar] :current_byte/:total_byte" do |conf|
        conf.total = 100000000000
      end
      
      30.times do
        sleep(0.1)
        bar.advance(Random.rand(990000000))
      end
end