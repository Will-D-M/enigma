require_relative 'test_helper'
require_relative '../lib/shift'

class ShiftTest < Minitest::Test

  def test_it_can_find_final_shift
    assert_equal 3, Shift.final_shift("02715", "040895")[0]
  end

end
