require_relative '../src/SequenceEquation.rb'
require 'test/unit'
class TestSequenceEquation < Test::Unit::TestCase
  def test_case1
    sequence_equation = SequenceEquation.new
    input = sequence_equation.organize_input([2, 3, 1])
    output = sequence_equation.solve_problem(input)
    expected_output = [2, 3, 1]
    assert_equal(output, expected_output)
  end
end
