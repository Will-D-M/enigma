require_relative 'test_helper'
require_relative '../lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new("02715", "040895")
  end

  def test_date_sqaured
    assert_equal "1672401025", @shift.date_squared
  end

  def test_initial_offset
    assert_equal ["1", "0", "2", "5"], @shift.initial_offset
  end

  def test_initial_key_array
    assert_equal ["02", "27", "71", "15"], @shift.initial_key
  end

  def test_shift_number
    assert_equal 3, @shift.shift_number(0)
    assert_equal 27, @shift.shift_number(1)
    assert_equal 73, @shift.shift_number(2)
    assert_equal 20, @shift.shift_number(3)
  end

end
