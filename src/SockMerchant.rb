# problem https://www.hackerrank.com/challenges/sock-merchant?h_r=next-challenge&h_v=zen

def get_input
  gets.strip
  a = gets.strip
  a = a.split(' ').map(&:to_i)

  a
end

def solve_problem(a)
  hash = {}
  a.each do |item|
    if hash.key?(item)
      count = hash[item]
      hash[item] = count + 1
    else
      hash[item] = 1
    end
  end
  pairs = 0
  hash.each do |_k, v|
    pair = v / 2
    pairs += pair
  end
  pairs
end

a = get_input
result = solve_problem(a)
puts result
