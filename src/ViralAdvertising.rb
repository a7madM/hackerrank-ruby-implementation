class ViralAdvertising
  def input
    n = gets.strip.to_i
    n
  end

  def solve_problem(n)
    count = 0
    number = 5
    n.downto(1) do |_x|
      number /= 2
      liked = number.floor
      count += liked
      number = liked * 3
    end
    count
  end
end
