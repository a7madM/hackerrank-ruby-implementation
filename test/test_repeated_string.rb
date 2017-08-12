require_relative '../src/RepeatedString.rb'
require 'test/unit'
class TestRepeatedString < Test::Unit::TestCase
  def test_case1
    repeated_string = RepeatedString.new
    string = 'aba'
    number = 10
    output = repeated_string.solve(string, number)

    assert_equal(7, output)
  end

  def test_case2
    repeated_string = RepeatedString.new
    string = 'a'
    number = 1_000_000_000_000
    output = repeated_string.solve(string, number)
    assert_equal(1_000_000_000_000, output)
  end

  def test_case3
    s = 'kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm'
    n = 736_778_906_400
    repeated_string = RepeatedString.new
    output = repeated_string.solve(s, n)
    p output
    assert_equal(51_574_523_448, output)
  end
end
