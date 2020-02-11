# problem https://www.hackerrank.com/challenges/picking-numbers

def input
  gets.strip
  values = gets.strip.split(' ').map(&:to_i)
  return values
end

def solve values
  # values.sort!
  max = 0
  for i in 0...values.length
    result = values.count(i) + values.count(i + 1)
    # puts result
    # puts result

    if result > max
      max = result
    end
  end
  return max
end
values = input
count = solve(values)
puts count
