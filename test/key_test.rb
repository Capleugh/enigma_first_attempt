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

  def test_number_length
    assert_equal "02715".length, @key_2.generate.length
    # require 'pry'; binding.pry
  end

  def test_numbers_data_type
    assert_instance_of String, @key_1.generate
    assert_instance_of String, @key_2.generate
  end

  def test_random_number_can_be_split
    expected = ["02", "27", "71", "15"]

    assert_equal expected, @key_2.split
  end

  def test_keys_can_be_generated_from_random_number
    expected = {
      A: "02",
      B: "27",
      C: "71",
      D: "15",
    }

    assert_equal expected, @key_2.generate_key("02715")
  end

end
