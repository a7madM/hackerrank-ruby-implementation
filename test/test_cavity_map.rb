require_relative '../src/CavityMap.rb'

require 'test/unit'

class TestCavityMap < Test::Unit::TestCase
  def test_case_1
    cavity_map = CavityMap.new
    grid = cavity_map.input
    grid = cavity_map.solve_problem(grid)
    # p grid
    assert_equal('X', grid[1][1])
  end

  # def test_case_2
  #   integers = [1, 'x', 3, 4].all? { |i| i.is_a?(Integer) }
  #   assert_equal(false, integers)
  # end
end
