# frozen_string_literal: true

# https://www.hackerrank.com/challenges/manasa-and-stones/problem
class ManasaAndStones
  def stones(stones, one, two)
    result = []
    stones -= 1
    a = [one, two].min
    b = [one, two].max
    current = a * stones
    max = b * stones
    difference = b - a
    if a == b
      result << current
    else
      while current <= max
        result << current
        current += difference
      end
    end
    result.join(' ')
  end

  def input
    t = gets.strip.to_i
    (0..t - 1).each do |_i|
      n = gets.strip.to_i
      a = gets.strip.to_i
      b = gets.strip.to_i
      result = stones(n, a, b)
      print result
      puts ''
    end
  end
end
