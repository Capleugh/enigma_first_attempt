require './module/randomable'

class Key
  include Randomable

  def initialize(key = generate)
    @key = key
  end

  def split
    number_split = []
    @key.chars.each_cons(2) do |number|
      number_split << number[0] + number[1]
    end
    number_split
  end

  def generate_key(random_number)
    @key = {
      A: split[0],
      B: split[1],
      C: split[2],
      D: split[3],
    }
  end
end
