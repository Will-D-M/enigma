require_relative 'key'

class Enigma

  attr_reader :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, key = Key.random_number_string, date = Date.current_date)
    encrypted_message = []
    message.each_char do |character|
      if !@alphabet.include?(character)
        encrypted_message << character
      elsif (message.index(character) % 4 == 0)
        index_position = @alphabet.index(character.downcase)
        shifted_position = (index_position + (Shift.a_index(key, date))) % 27
        new_letter = @alphabet[shifted_position]
        encrypted_message << new_letter
      elsif (message.index(character) % 4 == 1)
        index_position = @alphabet.index(character.downcase)
        shifted_position = (index_position + (Shift.b_index(key, date))) % 27
        new_letter = @alphabet[shifted_position]
        encrypted_message << new_letter
      elsif (message.index(character) % 4 == 2)
        index_position = @alphabet.index(character.downcase)
        shifted_position = (index_position + (Shift.c_index(key, date))) % 27
        new_letter = @alphabet[shifted_position]
        encrypted_message << new_letter
      elsif (message.index(character) % 4 == 3)
        index_position = @alphabet.index(character.downcase)
        shifted_position = (index_position + (Shift.d_index(key, date))) % 27
        new_letter = @alphabet[shifted_position]
        encrypted_message << new_letter
      end
    end
    encrypted_message
  end

end
