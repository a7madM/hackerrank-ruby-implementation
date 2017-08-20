class ACMICPCTeam
  def input
    n, m = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    topic = Array.new(n)
    for topic_i in (0..n - 1)
      topic[topic_i] = gets.strip
    end

    [topic, m, n]
  end

  def solve(v, m, n)
    ans = 0
    cnt = 0

    0.upto(n - 1) do |i|
      (i + 1).upto(n - 1) do |j|
        val = 0
        0.upto(m) do |k|
          val += 1 if v[i][k] == '1' || v[j][k] == '1'
        end
        if ans < val
          ans = val
          cnt = 1
        elsif ans == val
          cnt += 1
        end
      end
    end
    [ans, cnt]
  end
end
