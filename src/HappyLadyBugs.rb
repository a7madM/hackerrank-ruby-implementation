class HappyLadyBugs
  def input
    input = []
    q = gets.strip.to_i
    for a0 in (0..q - 1)
      gets.strip.to_i
      b = gets.strip
      input << b
      # p solve_problem(b)
    end

    input
  end

  def solve_problem(b)
    return false if b.length == 1 && b.count('_').zero?
    return true if b.length == 1 && !b.count('_').zero?

    b.each_char do |item|
      next if item == '_'
      count = b.count item
      return false if count == 1
    end
    needs_move = needs_move?(b)

    if needs_move == false
      return true
    else
      return false if b.count('_').zero?
    end

    return false if b.count('_').zero?
    true
  end

  def needs_move?(b)
    (1..b.length - 2).each do |index|
      # b[i] != b[i + 1] && b[i] != b[i - 1]
      if b[index] != b[index + 1] && b[index] != b[index - 1]
        # puts index
        return true
      end
    end
    false
  end
end
