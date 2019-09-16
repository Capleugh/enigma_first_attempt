require './test_helper'
require './lib/random_number'
require 'pry'

class RandomNumberTest < Minitest::Test
  def setup
    @random = RandomNumber.new
    @r2 = RandomNumber.new.num
    # when instantiating a default random number, this allows you to access just the number in a string instead of an entire object.
  end

  def test_it_exists
    assert_instance_of RandomNumber, @random
  end

  def test_random_number_can_be_generated
    # binding.pry
    # assert_equal "01234".length, RandomNumber.generate.length
    assert_equal "01234".length, @random.generate.length
  end

  def test_num
    assert_instance_of String, @r2
  end
end
