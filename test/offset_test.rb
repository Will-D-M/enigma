require_relative 'test_helper'
require_relative '../lib/offset'

class OffsetTest < Minitest::Test

  def test_it_can_generate_current_date
    Offset.stubs(:current_date).returns("100120")
    assert_equal "100120", Offset.current_date
  end

end
