# problem https://www.hackerrank.com/challenges/repeated-string/problem
class RepeatedString
  def input
    s = gets.strip
    n = gets.strip.to_i
    [s, n]
 end

  def solve(string, number)
    count_per_pattern = string.count('a')

    patterns_count = number / string.length
    remainder = number % string.length

    temp = string[0...remainder]
    count_in_last = temp.count('a')
    count_in_last = 0 if remainder == 0
    count = count_per_pattern * patterns_count + count_in_last
    count
  end
end
