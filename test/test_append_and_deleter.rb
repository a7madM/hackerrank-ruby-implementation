require 'test/unit'
require_relative '../src/AppendAndDelete.rb'

class TestAppendAndDelete < Test::Unit::TestCase
  def test_case1
    append_and_delete = AppendAndDelete.new
    s = 'aba'
    t = 'aba'
    k = 7

    assert_equal(true, append_and_delete.solve(s, t, k))
  end

  def test_case2
    append_and_delete = AppendAndDelete.new
    s = 'hackerproof'
    t = 'hackerrank'
    k = 9

    assert_equal(true, append_and_delete.solve(s, t, k))
  end

  def test_case3
    s = 'asdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcv'
    t = 'asdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcvasdfqwertyuighjkzxcv'
    k = 20
    append_and_delete = AppendAndDelete.new
    assert_equal(true, append_and_delete.solve(s, t, k))
  end

  def test_case4
    s = 'zzzz'
    t = 'zzzzzz'
    k = 6
    append_and_delete = AppendAndDelete.new
    assert_equal(true, append_and_delete.solve(s, t, k))
  end
end
