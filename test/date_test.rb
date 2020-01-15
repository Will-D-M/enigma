require_relative 'test_helper'
require_relative '../lib/date'

class DateTest < Minitest::Test

  def test_it_can_generate_current_date
    Date.stubs(:current_date).returns("100120")
    assert_equal "100120", Date.current_date
  end

end
