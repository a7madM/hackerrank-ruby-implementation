# problem: https://www.hackerrank.com/challenges/kaprekar-numbers
class ModifiedKaprekarNumbers
  def input
    p = gets.strip.to_i
    q = gets.strip.to_i
    [p, q]
  end

  def solve_problem(p, q)
    result = []
    p.upto(q) do |i|
      result << i if kaprekar?(i) || i == 1
    end
    result
  end

  def kaprekar?(number)
    square = number**2
    square = square.to_s
    mid = square.length / 2 - 1
    l = square[0..mid]
    r = square[mid + 1..square.length] if mid < square.length
    r ||= 0
    sum = r.to_i + l.to_i
    return true if sum == number
    false
  end
end
