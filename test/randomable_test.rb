require './test_helper'
require './lib/randomable'
require './lib/key'

class RandomableTest < Minitest::Test
  def setup
    @key = Key.new
    @key = Key.new("02715")
  end

  def test_random_number_length
    assert_equal "02715".length, @key.generate.length
  end

  def test_numbers_data_type
    assert_instance_of String, @key.generate
  end
end
