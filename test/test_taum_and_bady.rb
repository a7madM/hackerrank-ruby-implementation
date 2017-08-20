require 'test/unit'
require_relative '../src/TaumAndBady.rb'
class TestTaumAndBady < Test::Unit::TestCase
  @taum_and_bady
  def setup
    @taum_and_bady = TaumAndBady.new
  end

  def test_case1
    result = @taum_and_bady.solve(10, 10, 1, 1, 1)
    assert_equal(result, 20)
  end

  def test_case2
    result = @taum_and_bady.solve(5, 9, 2, 3, 4)
    assert_equal(result, 37)
  end

  def test_case3
    result = @taum_and_bady.solve(3, 6, 9, 1, 1)
    assert_equal(result, 12)
  end

  def test_case4
    result = @taum_and_bady.solve(7, 7, 4, 2, 1)
    assert_equal(result, 35)
  end

  def test_case5
    result = @taum_and_bady.solve(3, 3, 1, 9, 2)
    assert_equal(result, 12)
  end

  def test_case6
    result = @taum_and_bady.solve(42_899_452, 58_539_299, 832_193, 584_380, 655_132)
    assert_equal(result, 69_909_819_207_856)
  end

  def test_case7
    result = @taum_and_bady.solve(60_020_263, 12_506_083, 825_605, 399_222, 7272)
    assert_equal(result, 29_390_580_255_348)
  end
end
