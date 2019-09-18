require './module/randomable'
require './module/dateable'
require './lib/key'
# require './module/shiftable'

class Encryptor
  # include Shiftable
  include Randomable
  include Dateable

  attr_reader :char_set, :shift

  def initialize
    @char_set = ("a".."z").to_a << " "
    @shift = []
  end

  def add_key_offset(key_offset)
    @shift << key_offset
    require 'pry'; binding.pry
  end

end
