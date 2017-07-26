require_relative '../src/FairRations.rb'
require 'test/unit'

class TestFairRations < Test::Unit::TestCase
  def test_case1
    fair_rations = FairRations.new
    n = 5
    b = [2, 3, 4, 5, 6]
    result = fair_rations.solve_problem(n, b)
    assert_equal(4, result)
  end

  def test_case2
    fair_rations = FairRations.new
    n = 2
    b = [1, 2]
    result = fair_rations.solve_problem(n, b)
    assert_equal('NO', result)
  end

  def test_case3
    fair_rations = FairRations.new
    n = 5
    b = [1, 2, 3, 4, 5]
    result = fair_rations.solve_problem(n, b)
    assert_equal('NO', result)
  end
end
