require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/double'

class DoubleTest < Minitest::Test
  def test_variables_are_initialized_as_zero
    tr = And::Double.new

    assert_equal 0, tr.input_a
    assert_equal 0, tr.input_b
  end

  def test_variables_can_be_changed
    tr = And::Double.new
    tr.input_a = 1
    tr.input_b = 1

    assert_equal 1, tr.input_a
    assert_equal 1, tr.input_b
  end

  def test_we_can_do_this_and_shit
    tr = And::Double.new
    assert tr.output
  end

  def test_that_we_can_effect_output
    tr = And::Double.new
    tr.input_a = 1
    tr.input_b = 1

    assert_equal 1, tr.output
  end



end
