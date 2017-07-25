require_relative '../src/HurdleRace.rb'

require 'test/unit'

class TestHurdleRace < Test::Unit::TestCase
  def test_case_1
    hurdleRace = HurdleRace.new
    n = 5
    k = 7
    height = [2, 5, 4, 5, 2]

    result = hurdleRace.min_magic_beverages(n, k, height)
    assert_equal(0, result)
  end

  def test_case_2
    hurdleRace = HurdleRace.new
    n = 5
    k = 4
    height = [1, 6, 3, 5, 2]
    result = hurdleRace.min_magic_beverages(n, k, height)
    assert_equal(2, result)
  end

  def test_case_3
    assert_equal(1, 2)
  end
end
