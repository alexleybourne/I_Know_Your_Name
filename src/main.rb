require 'test/unit'
require_relative 'functions'

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

class Main_Tests < Test::Unit::TestCase
    # def test_types
    #     types "Hello."
    # end

    # def test_deletes
    #     print "Hello"
    #     waits(2.0)
    #     deletes "Hello"
    # end

    # def test_waits
    #     waits(4)
    # end

    def test_loading
        loading("Download","System Root")
    end

    
end


