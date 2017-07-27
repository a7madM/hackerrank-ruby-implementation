
class JumbingOnClouds
  def input
    n, k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    c = gets.strip
    c = c.split(' ').map(&:to_i)
    [n, k, c]
  end

  def solve_problem(n, k, clouds)
    result = 100
    i = 0
    loop do
      i = (i + k) % n
      result -= if clouds[i].zero?
                  1
                else
                  3
                end
      break if i.zero?
    end
    result
  end
end
