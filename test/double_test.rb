require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/double'

class DoubleTest < Minitest::Test
  def test_variables_are_initialized_as_zero
    tr = Double.new

    assert_equal 0, tr.input_a
    assert_equal 0, tr.input_b
  end

  def test_variables_can_be_changed
    tr = Double.new
    tr.input_a = 1
    tr.input_b = 1

    assert_equal 1, tr.input_a
    assert_equal 1, tr.input_b
  end
end
