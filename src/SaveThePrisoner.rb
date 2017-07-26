class SaveThePrisoner
  def input
    t = gets.strip.to_i
    t
  end

  def run_test_cases(t)
    result = []
    t.downto(1) do |_i|
      n, m, s = gets.strip.split(' ')
      n = n.to_i
      m = m.to_i
      s = s.to_i
      id = save_the_prisoner(n, m, s)

      result << id
    end

    puts result
  end

  def save_the_prisoner(n, m, s)
    result = (s + m - 1) % n
    result = n if result.zero?
    result
  end
end
