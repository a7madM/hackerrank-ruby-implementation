# problem https://www.hackerrank.com/challenges/magic-square-forming

def input
  s = Array.new(3)
  for s_i in (0..3 - 1)
    s_t = gets.strip
    s[s_i] = s_t.split(' ').map(&:to_i)
  end

  return s
end

def get_all_squares
  all_squares =
    [
      [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
      [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
      [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
      [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
      [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
      [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
      [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
      [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    ];

  return all_squares
end

def solve_problem(s)
  all_squares = get_all_squares()
  min_cost = 45
  for k in 0..7
    cost = 0
    for i in 0..2
      for j in 0..2
        # puts s[i][j]
        # puts all_squares[x][i][j]
        s_num = s[i][j]
        p_num = all_squares[k][i][j]
        if p_num != s_num
          cost += (p_num - s_num).abs;
        end
      end
      puts cost
      # puts min_cost
    end
    if min_cost > cost
      min_cost = cost
    end
  end
  return min_cost
end

s = input
min_cost = solve_problem(s)
# puts min_cost
