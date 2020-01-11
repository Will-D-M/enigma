require_relative 'test_helper'
require_relative '../lib/key'

class KeyTest < Minitest::Test

  def test_it_can_generate_random_number_string
    assert_instance_of String, Key.random_number_string
    assert_equal 5, Key.random_number_string.length
  end

end
