class SequenceEquation
  def input
    t = gets.strip.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    organize_input(a)
  end

  def organize_input(a)
    hash = {}
    0.upto(a.length - 1) do |i|
      hash[a[i]] = i + 1
    end
    hash
  end

  def solve_problem(hash)
    result = []
    1.upto(hash.length) do |i|
      px = hash[i]
      ppx = hash[px]
      result << ppx
    end
    result
  end
end
