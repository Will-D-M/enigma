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
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt
    expected = { encryption: "keder ohulw", key: "02715", date: "040895" }
    assert_equal expected, @enigma.encrpyt("hello world", "02715", "040895")
  end

end
