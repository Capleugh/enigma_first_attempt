class Keys

  def initialize(number)
    @number = number
  end

  def number
    @number
  end

  def split(random_number)
    random = []
    random_number.chars.each_cons(2) do |number|
      random << number[0] + number[1]
      # require 'pry'; binding.pry
    end
    random
  end

  def generate_key(random_number)
    # require 'pry'; binding.pry
    keys_hash = {
      A: split(random_number)[0],
      B: split(random_number)[1],
      C: split(random_number)[2],
      D: split(random_number)[3]
    }
  end
end
