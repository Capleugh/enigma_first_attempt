require './test_helper'
require './lib/randomable'
require './lib/key'


class KeysTest < Minitest::Test
  def setup
    @key =Key.new
    @key = Key.new("02715")
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_random_number_can_be_split
    expected = ["02", "27", "71", "15"]

    assert_equal expected, @key.split("02715")
  end

  def test_keys_can_be_generated_from_random_number
    expected = {
      A: "02",
      B: "27",
      C: "71",
      D: "15",
    }

    assert_equal expected, @key.generate_key("02715")
  end

end
