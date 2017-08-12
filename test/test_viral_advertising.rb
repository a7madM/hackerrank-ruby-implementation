require_relative '../src/ViralAdvertising.rb'
require 'test/unit'

class TestViralAdvertising < Test::Unit::TestCase
  def test_case_1
    viral_advertising = ViralAdvertising.new
    count = viral_advertising.solve_problem(3)
    assert_equal(9, count)
  end

  def test_case_2
    viral_advertising = ViralAdvertising.new
    count = viral_advertising.solve_problem(4)
    assert_equal(15, count)
  end

  def test_case_3
    viral_advertising = ViralAdvertising.new
    count = viral_advertising.solve_problem(5)
    assert_equal(24, count)
  end
end
