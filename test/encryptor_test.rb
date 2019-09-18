require './test_helper'
require './lib/key'
require './lib/offset'
require './lib/encryptor'
require './module/randomable'
require './module/dateable'
# require './module/shiftable'

class EncryptorTest < Minitest::Test
  def setup
    @encryptor = Encryptor.new
    @key = [2, 27, 71, 15]
    @offset = [4, 5, 6, 1]
  end

  def test_it_exists
    assert_instance_of Encryptor, @encryptor
  end

  def test_initialize
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @encryptor.char_set
    assert_equal [], @encryptor.shift
  end

  def test_key_can_be_added
    @encryptor.add_key_offset(@key)
    @encryptor.add_key_offset(@offset)

    assert_equal [@key, @offset], @encryptor.shift
  end

  # def test_key_and_offset_values_can_be_converted_to_array
  #   expected = ["06", "32", "77", "16"]
  #
  #   assert_equal expected, @encryptor.shift
  # end

  # def test_key_can_be_added_to_offset
  #   expected = {
  #       A: "06",
  #       B: "32",
  #       C: "77",
  #       D: "16",
  #     }
  #
  #   assert_equal expected, @encryptor.shift
  # end
end
