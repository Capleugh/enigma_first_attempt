require './test_helper'
require './lib/random_number'
require './lib/keys'


class KeysTest < Minitest::Test
  def setup
    @random = RandomNumber.new
    @r2 = RandomNumber.new.num
    @keys =Keys.new("02715")
  end

  def test_it_exists
    assert_instance_of Keys, @keys
  end

  def test_initialize
    assert_equal "02715", @keys.number
  end

  def test_random_number_can_be_split
    expected = ["02", "27", "71", "15"]

    assert_equal expected, @keys.split("02715")
  end

  def test_keys_can_be_generated_from_random_number
    expected = {
      A: "02",
      B: "27",
      C: "71",
      D: "15",
    }

    assert_equal expected, @keys.generate_key("02715")
  end

end
