
require_relative '../src/StrangeCounter.rb'
require 'test/unit'

class TestStrangeCounter < Test::Unit::TestCase
  def test_case1
    strange_counter = StrangeCounter.new
    result = strange_counter.solve_problem(11)
    assert_equal(11, result)
  end
end
