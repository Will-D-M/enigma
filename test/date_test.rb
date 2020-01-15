require_relative 'test_helper'
require_relative '../lib/date'
require 'date'

class DateTest < Minitest::Test

  def test_it_can_generate_current_date
    Date.stubs(:current_date).returns("100120")
    assert_equal "100120", Date.current_date
    assert_instance_of String, Date.current_date
    assert_equal 6, Date.current_date.length
  end

end
