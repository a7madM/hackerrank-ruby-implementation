# problem https://www.hackerrank.com/challenges/drawing-book

def get_input
    n = gets.strip.to_i
    p = gets.strip.to_i
    return n,p
end

def solve_problem(n,p)
    from_start = p / 2
    from_end = 0
    pairs = 0
    pairs = n / 2
    from_end = pairs - from_start
    if from_end < from_start
        return from_end
    end
    return from_start
end

n,p = get_input
result = solve_problem(n,p)
puts result