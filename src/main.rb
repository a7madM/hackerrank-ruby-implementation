# frozen_string_literal: true

require_relative 'HurdleRace.rb'
require_relative 'ClimbingLeaderboard.rb'
require_relative 'BeautifulDaysAtMovies.rb'
require_relative 'ViralAdvertising.rb'
require_relative 'SaveThePrisoner.rb'
require_relative 'SequenceEquation.rb'
require_relative 'FairRations.rb'
require_relative 'ModifiedKaprekarNumbers.rb'
require_relative 'CavityMap.rb'
require_relative 'StrangeCounter.rb'
require_relative 'HappyLadyBugs.rb'
require_relative 'JumbingOnClouds.rb'
require_relative 'JumbingOnClouds2.rb'
require_relative 'AppendAndDelete.rb'
require_relative 'CutSticks.rb'
require_relative 'RepeatedString.rb'
require_relative 'ACMICPCTeam.rb'
require_relative 'TaumAndBady.rb'
require_relative 'manasa_and_stones.rb'


def manasa_and_stones
  ManasaAndStones.new.input
end
manasa_and_stones

def taum_and_bady
  t = gets.strip.to_i
  taum_and_bady = TaumAndBady.new
  for a0 in (0..t - 1)
    b, w, x, y, z = taum_and_bady.input
    result = taum_and_bady.solve(b, w, x, y, z)
    puts result
  end
end

# taum_and_bady

def acm_icpc_team
  acm_icpc_team = ACMICPCTeam.new
  topic, m, n = acm_icpc_team.input
  max, count = acm_icpc_team.solve topic, m, n
  p max
  p count
end
# acm_icpc_team

def repeated_string
  repeated_string = RepeatedString.new
  s, n = repeated_string.input
  output = repeated_string.solve(s, n)
  p output
end
# repeated_string

def cut_sticks
  cut_sticks = CutSticks.new
  input = cut_sticks.input
  output = cut_sticks.solve input
  output.each do |result|
    p result
  end
end

# cut_sticks

def append_and_delete
  append_and_delete = AppendAndDelete.new
  s, t, k = append_and_delete.input
  result = append_and_delete.solve(s, t, k)
  if result
    puts 'Yes'
  else
    puts 'No'
  end
end

# append_and_delete

def test_jumbing_on_the_clouds
  jumbing_on_clouds = JumbingOnClouds.new
  n, k, clouds = jumbing_on_clouds.input
  result = jumbing_on_clouds.solve_problem n, k, clouds
  puts result
end
# test_jumbing_on_the_clouds

def test_jumbing_on_the_clouds_2
  jumbing_on_clouds = JumbingOnClouds2.new
  clouds = jumbing_on_clouds.input
  result = jumbing_on_clouds.solve_problem clouds
  puts result
end
# test_jumbing_on_the_clouds_2

def test_hurdle_race
  hurdle_race = HurdleRace.new
  n, k, height = hurdle_race.input
  result = hurdle_race.min_magic_beverages(n, k, height)
  puts result
end

def test_climbingleader
  climbing_leader = ClimbingLeaderboard.new
  scores, alice = climbing_leader.input
  climbing_leader.solve_problem(alice, scores)
end

# test_climbingleader

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

# test_sequence_equation

def test_fair_rations
  fair_rations = FairRations.new
  n, b = fair_rations.input
  result = fair_rations.solve_problem(n, b)
  puts result
end

# test_fair_rations

def test_modified_kaprekar_numbers
  modified_kaprekar_numbers = ModifiedKaprekarNumbers.new
  p, q = modified_kaprekar_numbers.input
  result = modified_kaprekar_numbers.solve_problem(p, q)
  print('INVALID RANGE') && return if result.empty?
  result.each do |item|
    print "#{item} "
  end
end

# test_modified_kaprekar_numbers

def test_cavity_map
  cavity_map = CavityMap.new
  grid = cavity_map.input
  result = cavity_map.solve_problem(grid)
  result.each do |item|
    item.each do |inner|
      print inner
    end
    puts ''
  end
end

# test_cavity_map

def test_strange_counter
  strange_counter = StrangeCounter.new
  input = strange_counter.input
  result = strange_counter.solve_problem(input)
  puts result
end

# test_strange_counter

def test_happy_lady_bug
  happy_lady_bugs = HappyLadyBugs.new
  input = happy_lady_bugs.input
  input.each do |b|
    result = happy_lady_bugs.solve_problem(b)
    if result == true
      puts 'YES'
    else
      puts 'NO'
    end
  end
end

# test_happy_lady_bug
