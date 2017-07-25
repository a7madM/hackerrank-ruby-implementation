# problem https://www.hackerrank.com/challenges/climbing-the-leaderboard

class ClimbingLeaderboard
  attr_accessor :index

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
    temp_ranks = Array.new(ranks)
    temp_ranks << alice_rank
    temp_ranks.sort!.uniq!

    rank = temp_ranks.length

    temp_ranks.each do |item|
      return rank if item == alice_rank
      rank -= 1
    end
  end
end
