# problem https://www.hackerrank.com/challenges/cavity-map/problem

class CavityMap
  def input
    n = gets.strip.to_i
    grid = Array.new(n) { Array.new(n) }

    for x in (0..n - 1)
      row = gets.strip
      row = row.split('')
      for y in (0..n - 1)
        number = row[y].to_i
        grid[x][y] = number
      end
    end
    grid
  end

  def solve_problem(grid)
    length = grid.length
    1.upto(length - 2) do |x|
      1.upto(length - 2) do |y|
        current_element = grid[x][y]
        adjacent = [grid[x - 1][y], grid[x + 1][y], grid[x][y - 1], grid[x][y + 1]]
        changed = change?(adjacent, current_element)
        grid[x][y] = 'X' if changed
        # puts "#{current_element} #{changed}"
      end
    end
    grid
  end

  def change?(adjacent, current_element)
    if adjacent.all? { |i| i.is_a?(Integer) }
      current_element > adjacent[0] &&
        current_element > adjacent[1] &&
        current_element > adjacent[2] &&
        current_element > adjacent[3]
    else
      false
    end
  end
end
