require 'test/unit'
require 'colorize'
require 'tty-cursor'
require 'tty-progressbar'

cursor = TTY::Cursor

def types(word)
    word.each_char do |char|
    print char
    sleep(0.05)
    end
    puts  
end

