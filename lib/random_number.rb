class RandomNumber

  def initialize
    @num = generate
  end

  def num
    @num = generate
  end

  def generate
    rand(00000..99999).to_s.rjust(5, "0")
  end
  # require 'pry'; binding.pry
end
