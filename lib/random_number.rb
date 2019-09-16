class RandomNumber
  attr_reader :num

  def initialize
    @num = generate
  end

  def generate
    rand(00000..99999).to_s.rjust(5, "0")
  end
end
