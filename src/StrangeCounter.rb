# problem https://www.hackerrank.com/challenges/strange-code/problem
class StrangeCounter
  def input
    gets.strip.to_i
  end

  def solve_problem(t)
    group = 3
    while t > group
      t -= group
      group *= 2
    end
    result = group - t + 1
    result
  end
end
