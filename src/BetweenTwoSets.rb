# problem https://www.hackerrank.com/challenges/between-two-sets

# !/bin/ruby

def getInput
  n, m = gets.strip.split(' ')
  n = n.to_i
  m = m.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  b = gets.strip
  b = b.split(' ').map(&:to_i)
  [a, b]
end

def getMin(a, max)
  min = max
  a.each do |element|
    min = element if min > element
  end

  min
end

def getMax(b)
  max = 0
  b.each do |element|
    max = element if max < element
  end

  max
end

def satisfyA(a, x)
  a.each do |element|
    return false if x % element != 0
  end
  true
end

def satisfyB(b, x)
  b.each do |element|
    return false if element % x != 0
  end
  true
end

def getTotalX(a, b, min, max)
  totalX = 0
  for i in min..max
    totalX += 1 if satisfyA(a, i) && satisfyB(b, i)
  end
  totalX
end

a, b = getInput

max = getMax(b)
min = getMin(a, max)
totalX = getTotalX(a, b, min, max)
p totalX

# p satisfyA(a,4)
# p satisfyB(b,3)
