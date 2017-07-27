class JumbingOnClouds2
  def input
    gets.strip.to_i
    c = gets.strip
    c = c.split(' ').map(&:to_i)
    c
  end

  def solve_problem(clouds)
    steps = 0
    i = 0
    while i < clouds.length - 2
      item = clouds[i]
      next_item = clouds[i + 2]
      # i += 1
      i += if next_item.zero?
             2
           else
             1
           end
      steps += 1
    end
    steps += 1 if i < clouds.length - 1
    steps
  end
end
