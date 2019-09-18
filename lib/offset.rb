require './module/dateable'

class Offset
  include Dateable

  def initialize(offset = generate)
    @offset = offset
  end

  def square(date)
    date.to_i * date.to_i
    # require pry'; binding.pry
  end

  def last_four(square)
    square.to_s[-4..-1]
    # require 'pry'; binding.pry
  end

  def split(last_four_digits)
    last_four_digits.chars
  end

  def generate_offset(last_four_digits)
    @offsets = {
      A: split(last_four_digits)[0],
      B: split(last_four_digits)[1],
      C: split(last_four_digits)[2],
      D: split(last_four_digits)[3],
    }

  end
end
