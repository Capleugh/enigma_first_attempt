require './lib/randomable'

class Key
  include Randomable

  def initialize(key = generate)
    @key = key
  end

  def split(random_number)
    number_split = []
    random_number.chars.each_cons(2) do |number|
      number_split << number[0] + number[1]
    end
    number_split
  end

  def generate_key(random_number)
    @key = {
      A: split(random_number)[0],
      B: split(random_number)[1],
      C: split(random_number)[2],
      D: split(random_number)[3],
    }
  end
end
