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
end
