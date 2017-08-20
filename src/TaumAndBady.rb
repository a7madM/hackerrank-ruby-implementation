# problem https://www.hackerrank.com/challenges/taum-and-bday/problem
class TaumAndBady
  def input
    # !/bin/ruby
    b, w = gets.strip.split(' ')
    b = b.to_i
    w = w.to_i
    x, y, z = gets.strip.split(' ')
    x = x.to_i
    y = y.to_i
    z = z.to_i

    [b, w, x, y, z]
  end

  def solve(cost_x, cost_y, x, y, z)
    result = 0
    total_x = 0
    total_y = 0
    if (z + x) >= y && (z + y) >= x
      total_y = + cost_y * y
      total_x = cost_x * x
    else
      min_cost = [x, y].min
      if min_cost == y
        total_x = (min_cost + z) * cost_x
        total_y = y * cost_y
      else
        total_y = (min_cost + z) * cost_y
        total_x = x * cost_x
      end
    end
    result = total_x + total_y
    result
  end
end
