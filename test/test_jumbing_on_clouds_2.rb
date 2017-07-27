require_relative '../src/JumbingOnClouds2.rb'
require 'test/unit'
class TestJumbingOnClouds2 < Test::Unit::TestCase
  def test_case1
    jumbing_on_clouds = JumbingOnClouds2.new
    clouds = [0, 0, 1, 0, 0, 1, 0]
    result = jumbing_on_clouds.solve_problem clouds
    assert_equal(4, result)
  end

  def test_case2
    jumbing_on_clouds = JumbingOnClouds2.new
    clouds = [0, 0, 0, 0, 1, 0]
    result = jumbing_on_clouds.solve_problem clouds
    assert_equal(3, result)
  end

  def test_case3
    jumbing_on_clouds = JumbingOnClouds2.new
    clouds = [0, 1, 0, 1, 0, 1, 0]
    result = jumbing_on_clouds.solve_problem clouds
    assert_equal(3, result)
  end

  def test_case4
    jumbing_on_clouds = JumbingOnClouds2.new
    clouds = [0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0]
    result = jumbing_on_clouds.solve_problem clouds
    assert_equal(7, result)
  end
end
