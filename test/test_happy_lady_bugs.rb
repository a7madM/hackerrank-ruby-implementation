require_relative '../src/HappyLadyBugs.rb'
require 'test/unit'

class TestHappyLadyBugs < Test::Unit::TestCase
  def test_case1
    happy_lady_bugs = HappyLadyBugs.new
    result = happy_lady_bugs.solve_problem('XXYYZZ')
    # assert_equal(true, result)

    moves = happy_lady_bugs.needs_move?('XXYYZZ')
    assert_equal(false, moves)
    # moves  = happy_lady_bugs.needs_move?('XXXYYY')
    # assert_equal(false, moves)
    # moves = happy_lady_bugs.needs_move?('RRGGBB')
    # assert_equal(false, moves)

    # moves = happy_lady_bugs.needs_move?('XYZ')
    # assert_equal(true, moves)
  end
end
