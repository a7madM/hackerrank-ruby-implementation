# problem https://www.hackerrank.com/challenges/apple-and-orange

# !/bin/ruby

def getHouse
  s, t = gets.strip.split(' ')
  s = s.to_i
  t = t.to_i
  return s, t
end

def getTress
  a, b = gets.strip.split(' ')
  a = a.to_i
  b = b.to_i
  return a, b
end

def getApplesAndOranges()
  m, n = gets.strip.split(' ')
  m = m.to_i
  n = n.to_i
  return m, n
end

def getApples
  apple = gets.strip
  apple = apple.split(' ').map(&:to_i)
  return apple
end

def getOranges
  orange = gets.strip
  orange = orange.split(' ').map(&:to_i)
  return orange
end

s, t = getHouse()
a, b = getTress()
getApplesAndOranges()
apple = getApples()
orange = getOranges()

def countApples(apples, a, s, t)
  count = 0
  apples.each { |item|
    item += a
    if item >= s and item <= t
      count += 1
    end
  }
  return count
end

def countOranges(oranges, b, s, t)
  count = 0
  oranges.each { |item|
    item += b
    # p item
    if item >= s and item <= t
      count += 1
    end
  }
  return count
end

applesCount = countApples(apple, a, s, t)
orangesCount = countOranges(orange, b, s, t)

p applesCount
p orangesCount
