require_relative '../src/ClimbingLeaderboard.rb'
require 'test/unit'

class TestClimbingLeaderboard < Test::Unit::TestCase
  def test_case_1
    climbingLeaderboard = ClimbingLeaderboard.new
    # n = 7
    # m = 4
    ranks = [100, 100, 50, 40, 40, 20, 10]
    ranks.uniq!

    # alice_ranks = [5, 25, 50, 120]

    rank = climbingLeaderboard.get_alice_rank(5, ranks)
    assert_equal(6, rank)

    rank = climbingLeaderboard.get_alice_rank(25, ranks)
    assert_equal(4, rank)

    rank = climbingLeaderboard.get_alice_rank(50, ranks)
    assert_equal(2, rank)

    rank = climbingLeaderboard.get_alice_rank(120, ranks)
    assert_equal(1, rank)
  end
end
