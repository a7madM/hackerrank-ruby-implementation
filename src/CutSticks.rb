# problem https://www.hackerrank.com/challenges/cut-the-sticks/problem
class CutSticks
  def input
    n = gets.strip.to_i
    arr = gets.strip
    arr = arr.split(' ').map(&:to_i)
    arr
  end

  def solve(input)
    ouput = []
    ouput << input.length
    i = 0
    loop do
      break if input.empty?
      min = input.min
      input = input.map { |i| i - min }
      input -= [0]
      ouput << input.length unless input.empty?
    end
    ouput
  end
end
