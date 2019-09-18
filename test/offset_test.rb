require './test_helper'
require './lib/offset'
require './module/dateable'

class OffsetTest < Minitest::Test
  def setup
    @offset_1 = Offset.new
    @offset_2 = Offset.new("091719")
  end

  def test_it_exists
    assert_instance_of Offset, @offset_1
  end

  def test_date_can_be_generated
    assert_equal "170919".length, @offset_2.generate.length
  end

  def test_generated_date_data_type
    assert_instance_of String, @offset_1.generate
    assert_instance_of String, @offset_2.generate
  end

  def test_date_can_be_squared
    assert_equal 29_213_304_561, @offset_2.square("170919")
  end

  def test_isolate_last_four_digits_of_squared_date
    assert_equal "4561", @offset_2.last_four(29_213_304_561)
  end

  def test_last_four_digits_can_generate_offset_converted_to_i
    expected = [4, 5, 6, 1]

    assert_equal expected, @offset_2.generate_offset("4561")
  end
end
