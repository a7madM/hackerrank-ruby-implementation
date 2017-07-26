require_relative '../src/BeautifulDaysAtMovies.rb'

require 'test/unit'

class TestBeautifulDaysAtMovies < Test::Unit::TestCase
  def test_case_1
    beautiful_days_at_movies = BeautifulDaysAtMovies.new
    i = '20'
    j = '23'
    k = '6'
    count = beautiful_days_at_movies.solve_problem(i, j, k)
    assert_equal(2, count)
  end
end
