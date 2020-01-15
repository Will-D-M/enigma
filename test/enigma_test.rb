require_relative 'test_helper'
require_relative '../lib/enigma'

class Enigmatest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_attributes
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.alphabet
  end

  def test_it_can_return_encrypted_message
    assert_equal "keder ohulw", @enigma.encrypted_message("hello world", "02715", "040895")
  end

  def test_it_can_encrypt
    expected = { encryption: "keder ohulw!", key: "02715", date: "040895" }
    assert_equal expected, @enigma.encrypt("Hello world!", "02715", "040895")
  end

  def test_it_can_return_decrypted_message
    assert_equal "hello world12345!@#$%", @enigma.decrypted_message("keder ohulw12345!@#$%", "02715", "040895")
  end

  def test_it_can_decrypt
    expected = { encryption: "hello world", key: "02715", date: "040895" }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

end
