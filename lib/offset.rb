require './module/dateable'

class Offset
  include Dateable

  def initialize(offset = generate)
    @offset = offset
  end

  def square(date)
    date.to_i * date.to_i
    # require 'pry'; binding.pry
  end
end
