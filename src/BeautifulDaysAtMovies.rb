# problem :https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
class BeautifulDaysAtMovies
  def initialize; end

  def input
    i, j, k = gets.strip.split(' ')
    [i, j, k]
  end

  def solve_problem(i, j, k)
    start_point = i.to_i
    end_point = j.to_i
    k = k.to_i

    count = 0
    start_point.upto(end_point) do |x|
      x_reversed = x.to_s.reverse.to_i

      factor = (x - x_reversed).abs % k
      count += 1 if factor.zero?
    end
    count
  end
end
