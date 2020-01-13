class Shift

  def self.date_squared(key, date)
    ((date.to_i) ** 2).to_s
  end

  def self.initial_offset(key, date)
    date_squared(key, date).chars.values_at(-4, -3, -2, -1)
  end

  def self.initial_key(key, date)
    [key.chars.values_at(0, 1).join, key.chars.values_at(1, 2).join, key.chars.values_at(2, 3).join, key.chars.values_at(3, 4).join]
  end

  def self.a_index(key, date)
    initial_key(key, date)[0].to_i + initial_offset(key, date)[0].to_i
  end

  def self.b_index(key, date)
    initial_key(key, date)[1].to_i + initial_offset(key, date)[1].to_i
  end

  def self.c_index(key, date)
    initial_key(key, date)[2].to_i + initial_offset(key, date)[2].to_i
  end

  def self.d_index(key, date)
    initial_key(key, date)[3].to_i + initial_offset(key, date)[3].to_i
  end

end
