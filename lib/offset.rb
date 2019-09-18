require './module/dateable'

class Offset
  include Dateable
  attr_reader :offset

  def initialize(offset = generate)
    @offset = offset
  end

  def square(date)
    date.to_i * date.to_i
  end

  def last_four(square)
    square.to_s[-4..-1]
  end

  def generate_offset(last_four)
    @offset = last_four.chars
    @offset.map do |element|
      element.to_i
    end
  end
end
