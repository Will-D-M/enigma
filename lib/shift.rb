class Shift

  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def date_squared
    ((@date.to_i) ** 2).to_s
  end

  def initial_offset
    date_squared.chars.values_at(-4, -3, -2, -1)
  end

  def initial_key
    [
      key.chars.values_at(0, 1).join,
      key.chars.values_at(1, 2).join,
      key.chars.values_at(2, 3).join,
      key.chars.values_at(3, 4).join
    ]
  end

  def shift_number(index)
    initial_key[index].to_i + initial_offset[index].to_i
  end
end
