require_relative 'test_helper'
require_relative '../lib/enigma'
require_relative '../lib/shift'
require_relative '../lib/date'
require_relative '../lib/key'

class Enigmatest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    asser_instance_of Enigma, @enigma
  end

end
