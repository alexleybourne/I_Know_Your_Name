require 'test/unit' # Test-unit Gem
require_relative 'story' # Contains all story dialog and questions


class StoryTest < Test::Unit::TestCase
    def setup #Calls the "get_directory" function
        puts testing
    end

    # Loads value

    def test_story_load #Testing output is correct
        assert_equal("Hello there", testing )
    end

end