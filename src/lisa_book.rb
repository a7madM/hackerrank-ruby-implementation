# problem https://www.hackerrank.com/challenges/lisa-workbook/problem
class LisaBook
  def input
    n, k = gets.strip.split(' ').map(&:to_i)
    chapters = gets.strip.split(' ').map(&:to_i)
    [n, k, chapters]
  end

  def special_problems(k, chapters)
    special_problems = 0
    page_number = 1
    chapters.each do |i|
      1.upto(i) do |x|
        # puts x
        special_problems += 1 if x == page_number

        page_number += 1 if (x % k).zero? || x == i
      end
    end

    special_problems
  end
end
