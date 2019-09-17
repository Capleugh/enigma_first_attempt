require './test_helper'
require './lib/randomable'
require './lib/key'

class RandomableTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_random_number_can_be_generated
    assert_equal "02715".length, @key.generate.length
  end

  def test_numbers
    assert_instance_of String, @key.generate
  end
end
