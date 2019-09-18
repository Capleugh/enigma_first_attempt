require './module/randomable'

class Key
  include Randomable
  attr_reader :key

  def initialize(key = generate)
    @key = key
  end

  def generate_key
    key_split = []
    @key.chars.each_cons(2) do |number|
      key_split << number[0] + number[1]
    end
    key_split
  end

  def convert
    generate_key.map do |number|
      number.to_i
    end
  end
end
