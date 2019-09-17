require './test_helper'
require './lib/random_number'
require './lib/key'


class KeysTest < Minitest::Test
  def setup
    @random = RandomNumber.new
    @r2 = RandomNumber.new.num
    @key =Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  # def test_initialize
  #   # @key.instance_variable_set(:@number, "02715")
  #   assert_equal "02715", @key.number
  #   # mock this number?
  # end

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
