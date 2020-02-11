# problem https://www.hackerrank.com/challenges/bon-appetit

def get_input
  n, k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i

  a = gets.strip
  a = a.split(' ').map(&:to_i)

  charged = gets.strip.to_i
  [n, k, a, charged]
end

def solveProblem(_n, k, a, charged)
  sum = 0
  for i in 0..a.length

    sum += a[i].to_i if i != k
  end
  actual = sum / 2
  if charged == actual
    return 'Bon Appetit'
  else
    return charged - actual
  end
end

n, k, a, charged = get_input
resut = solveProblem(n, k, a, charged)
puts resut
