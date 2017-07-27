# problem https://www.hackerrank.com/challenges/climbing-the-leaderboard

class ClimbingLeaderboard
  attr_accessor :index
  @@steps = 0
  def initialize; end

  def input
    gets.strip.to_i # get n

    scores = gets.strip
    scores = scores.split(' ').map(&:to_i)
    scores = scores.uniq

    gets.strip.to_i # get m
    alice = gets.strip
    alice = alice.split(' ').map(&:to_i)

    [scores, alice]
  end

  def solve_problem(alice_ranks, ranks)
    result = {}
    alice_ranks.each do |rank|
      if result.key? rank
        p result[rank]
      else
        alice_rank = get_alice_rank(rank, ranks)
        result[rank] = alice_rank
        p alice_rank
      end
    end
  end

  def get_alice_rank(alice_rank, ranks)
    index = ranks.bsearch_index { |x| x >= alice_rank }
    rank = ranks.length - index
    rank
  end

  def steps
    @@steps
  end
end
