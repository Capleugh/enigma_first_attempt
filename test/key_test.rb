require './test_helper'
require './lib/key'
require './module/randomable'


class KeysTest < Minitest::Test
  def setup
    @key_1 = Key.new
    @key_2 = Key.new("02715")
  end

  def test_it_exists
    assert_instance_of Key, @key_1
    assert_instance_of Key, @key_2
  end

  def test_initialize
    assert_equal "02715".length, @key_2.generate.length
    assert_instance_of String, @key_1.generate
    assert_instance_of String, @key_2.generate
  end

  def test_random_number_can_be_split_to_get_key
    expected = ["02", "27", "71", "15"]

    assert_equal expected, @key_2.generate_key
  end

  def test_string_to_i
    expected = [2, 27, 71, 15]

    assert_equal expected, @key_2.convert
  end
end
