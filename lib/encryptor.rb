require './module/randomable'
require './module/dateable'
require './lib/key'

class Encryptor
  include Randomable
  include Dateable

  attr_reader :char_set, :shift

  def initialize
    @char_set = ("a".."z").to_a << " "
    @shift = []
  end

  def add_key_offset(key_offset)
    @shift << key_offset
  end

  def combine
    @shift.sum do |element|
      element[0]
      # this only gives me the first value for obvious reasons, but I couldn't figure out how to snag all of them
    end
  end
end
