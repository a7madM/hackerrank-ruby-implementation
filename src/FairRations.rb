class FairRations
  def input
    n = gets.strip.to_i
    b = gets.strip.split(' ').map(&:to_i)
    [n, b]
  end

  def array_sum(b)
    sum = 0
    b.each do |item|
      sum += item
    end
    sum
  end

  def solve_problem(n, b)
    sum = array_sum(b)
    if sum.odd?
      'NO'
    else
      count = give_bread n, b
    end
  end

  def give_bread(n, b)
    count = 0
    for i in 0...n do
      next unless b[i].odd?
      b[i] += 1
      b[i + 1] += 1
      count += 2
    end
    count
  end
end
