require_relative '../src/CutSticks.rb'
require 'test/unit'
class TestCutSticks < Test::Unit::TestCase
  def test_case1
    input = [5, 4, 4, 2, 2, 8]
    cut_sticks = CutSticks.new
    output = cut_sticks.solve(input)
    assert_equal(6, output[0])
    assert_equal(4, output[1])
    assert_equal(2, output[2])
    assert_equal(1, output[3])
  end

  def test_case2
    input = [1, 2, 3, 4, 3, 3, 2, 1]
    cut_sticks = CutSticks.new
    output = cut_sticks.solve(input)
    assert_equal(8, output[0])
    assert_equal(6, output[1])
    assert_equal(4, output[2])
    assert_equal(1, output[3])
  end
end
