# problem https://www.hackerrank.com/challenges/cats-and-a-mouse


def get_queries
    q = gets.strip.to_i
    return q
end

def get_input
  x, y, z = gets.strip.split(' ')
  x = x.to_i
  y = y.to_i
  z = z.to_i
  return x,y,z
end
def solve_problem(x,y,z)
    x = (z - x).to_i.abs
    y = (z - y).to_i.abs
    
    if x == y
        return 'Mouse C'
    end

    if x > y
        return 'Cat B'
    end
    
    if x < y
        return 'Cat A'
    end
end

q = get_queries

while q > 0
    x,y,z = get_input
    result = solve_problem(x,y,z)
    puts result
    q -= 1
end