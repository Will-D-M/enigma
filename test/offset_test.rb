require_relative 'test_helper'
require_relative '../lib/offset'

class OffsetTest < Minitest::Test

  def test_it_can_generate_current_date
    assert_equal "100120", Offset.current_date
  end

end
