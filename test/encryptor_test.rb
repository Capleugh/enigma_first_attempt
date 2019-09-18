require './test_helper'
require './lib/key'
require './lib/offset'
require './lib/encryptor'
require './module/randomable'
require './module/dateable'

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

  def test_objects_to_be_shifted_can_be_added
    @encryptor.add_key_offset(@key)
    @encryptor.add_key_offset(@offset)

    assert_equal [@key, @offset], @encryptor.shift
  end

  def test_arrays_can_be_added_by_index
    @encryptor.add_key_offset(@key)
    @encryptor.add_key_offset(@offset)
    expected = [6, 32, 77, 16]

    assert_equal expected, @encryptor.combine
  end
end
