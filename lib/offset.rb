require './module/dateable'

class Offset
  include Dateable

  def initialize(offset = generate)
    @offset = offset
  end


end
