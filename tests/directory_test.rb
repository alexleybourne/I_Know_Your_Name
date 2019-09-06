require 'test/unit' # Test-unit Gem
require_relative 'functions' # Requires Functions.rb



class DirectoryTest < Test::Unit::TestCase
    def setup #Calls the "get_directory" function
        puts get_directory
    end

    #Your directory will be different
    #Shoudl match first two words in directory
    puts get_directory # This should Display your Directory

    def test_directory #Testing output is correct
        assert_equal("/Users/alexleybourne/", get_directory)
    end

end