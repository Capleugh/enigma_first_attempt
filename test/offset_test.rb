require './test_helper'
require './lib/offset'
require './module/dateable'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new
    @offset = Offset.new("091719")
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_date_can_be_generated
    assert_equal "170919".length, @offset.generate.length
  end

  def test_date_can_be_squared
    assert_equal 29_213_304_561, @offset.square("170919")
  end

  def test_isolate_last_four_digits_of_squared_date
    assert_equal "4561", @offset.last_four(29_213_304_561)
  end

  def test_last_four_digits_can_be_split
    expected = ["4", "5", "6", "1"]

    assert_equal expected, @offset.split("4561")
  end

  # def test_offset_can_be_generated_by_random_number
  #   expected = {
  #     A: "4",
  #     B: "5",
  #     C: "6",
  #     D: "1",
  #   }
  #
  #   assert_equal expected, @offset.generate_offset("4561")
  end
end
