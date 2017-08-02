require_relative '../src/SaveThePrisoner.rb'
require 'test/unit'
class TestSaveThePrisoner < Test::Unit::TestCase
  def test_case_1
    save_prisoner = SaveThePrisoner.new
    result = save_prisoner.save_the_prisoner(5, 2, 2)
    assert_equal(3, result)
  end

  def test_case_2
    save_prisoner = SaveThePrisoner.new
    result = save_prisoner.save_the_prisoner(5, 2, 1)
    assert_equal(2, result)
  end

  def test_case_3
    save_prisoner = SaveThePrisoner.new
    result = save_prisoner.save_the_prisoner(5, 3, 7)
    assert_equal(4, result)
  end

  def test_case_4
    save_prisoner = SaveThePrisoner.new
    result = save_prisoner.save_the_prisoner(352_926_151, 380_324_688, 94_730_870)
    assert_equal(122_129_406, result)

    result = save_prisoner.save_the_prisoner(94_431_605, 679_262_176, 5_284_458)
    assert_equal(23_525_398, result)

    result = save_prisoner.save_the_prisoner(208_526_924, 756_265_725, 150_817_879)
    assert_equal(72_975_907, result)

    result = save_prisoner.save_the_prisoner(499_999_999, 999_999_997, 2)
    assert_equal(499_999_999, result)
  end
end
