require_relative 'test_helper'
require_relative '../lib/shift'

class ShiftTest < Minitest::Test

  def test_date_sqaured
    assert_equal "1672401025", Shift.date_squared("02715", "040895")
  end

  def test_initial_offset
    assert_equal ["1", "0", "2", "5"], Shift.initial_offset("02715", "040895")
  end

  def test_initial_key_array
    assert_equal ["02", "27", "71", "15"], Shift.initial_key("02715", "040895")
  end

  def test_a_index
    assert_equal 3, Shift.a_index("02715", "040895")
  end

  def test_b_index
    assert_equal 27, Shift.b_index("02715", "040895")
  end

  def test_c_index
    assert_equal 73, Shift.c_index("02715", "040895")
  end

  def test_d_index
    assert_equal 20, Shift.d_index("02715", "040895")
  end

end
