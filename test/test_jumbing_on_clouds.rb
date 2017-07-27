require_relative '../src/JumbingOnClouds.rb'
require 'test/unit'
class TestJumbingOnClouds < Test::Unit::TestCase
  def test_case1
    jumbing_on_clouds = JumbingOnClouds.new
    n = 8
    k = 2
    clouds = [0, 0, 1, 0, 0, 1, 1, 0]
    result = jumbing_on_clouds.solve_problem n, k, clouds
    assert_equal(92, result)
  end
end
