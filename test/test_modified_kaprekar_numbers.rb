require_relative '../src/ModifiedKaprekarNumbers.rb'
require 'test/unit'
class TestModifiedKaprekarNumbers < Test::Unit::TestCase
  def test_case1
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.solve_problem(1, 100)
    puts result
    assert_equal(5, result.length)
  end

  def test_case2
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.solve_problem(400, 700)
    assert_equal(0, result.length)
  end

  def test_case3
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.solve_problem(1000, 10_000)
    assert_equal(7, result.length)
  end

  def test_case4
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.kaprekar?(4879)
    assert_equal(false, result)
  end

  def test_case5
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.kaprekar?(5292)
    assert_equal(false, result)
  end

  def test_case6
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.kaprekar?(100)
    assert_equal(false, result)
  end

  def test_case7
    modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
    result = modified_kaprekar_numbers.kaprekar?(9999)
    assert_equal(true, result)
  end
end
