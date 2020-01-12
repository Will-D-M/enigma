require_relative 'key'

class Enigma

  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypted_message(message, key = Key.random_number_string, date = Date.current_date)
    message.chars.map.with_index do |character, index|
      if !@alphabet.include?(character)
        character
      elsif index % 4 == 0
        index_position = @alphabet.index(character.downcase)
        @alphabet[(index_position + (Shift.a_index(key, date))) % 27]
      elsif index % 4 == 1
        index_position = @alphabet.index(character.downcase)
        @alphabet[(index_position + (Shift.b_index(key, date))) % 27]
      elsif index % 4 == 2
        index_position = @alphabet.index(character.downcase)
        @alphabet[(index_position + (Shift.c_index(key, date))) % 27]
      elsif index % 4 == 3
        index_position = @alphabet.index(character.downcase)
        @alphabet[(index_position + (Shift.d_index(key, date))) % 27]
      end
    end.join
  end

  def encrypt(message, key = Key.random_number_string, date = Date.current_date)
    {
      encryption: encrypted_message(message, key, date),
      key: key,
      date: date
    }
  end

end
