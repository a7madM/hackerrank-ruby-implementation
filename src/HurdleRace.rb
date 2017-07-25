# problem https://www.hackerrank.com/challenges/the-hurdle-race

class HurdleRace
  def initialize
  end

  def input
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    height = gets.strip
    height = height.split(' ').map(&:to_i)
    return n,k,height  
  end

  def min_magic_beverages(n,k,height)
    max_height = height.max
    diff = max_height - k
    if diff < 0
      diff = 0
    end
    return diff
  end


end