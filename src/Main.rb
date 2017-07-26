require_relative 'HurdleRace.rb'
require_relative 'ClimbingLeaderboard.rb'
require_relative 'BeautifulDaysAtMovies.rb'
require_relative 'ViralAdvertising.rb'
require_relative 'SaveThePrisoner.rb'
require_relative 'SequenceEquation.rb'
def test_hurdleRace
  hurdleRace = HurdleRace.new
  n, k, height = hurdleRace.input
  result = hurdleRace.min_magic_beverages(n, k, height)
  puts result
end

def test_climbingleader
  climbing_leader = ClimbingLeaderboard.new
  scores, alice = climbing_leader.input
  climbing_leader.solve_problem(alice, scores)
end

def test_beautiful_days_at_movies
  beautiful_days_at_movies = BeautifulDaysAtMovies.new
  i, j, k = beautiful_days_at_movies.input
  count = beautiful_days_at_movies.solve_problem(i, j, k)

  puts count
end

def test_viral_advertising
  viral_advertising = ViralAdvertising.new
  n = viral_advertising.input
  viral_advertising.solve_problem(n)
end

# count = test_viral_advertising
# puts count

def test_save_prisoner
  save_prisoner = SaveThePrisoner.new
  t = save_prisoner.input
  save_prisoner.run_test_cases(t)
end

# test_save_prisoner

def test_sequence_equation
  sequence_equation = SequenceEquation.new
  input = sequence_equation.input
  result = sequence_equation.solve_problem(input)

  puts result
end

test_sequence_equation
