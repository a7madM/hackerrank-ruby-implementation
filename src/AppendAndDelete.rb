# problem https://www.hackerrank.com/challenges/append-and-delete/problem
class AppendAndDelete
  def input
    s = gets.strip
    t = gets.strip
    k = gets.strip.to_i

    [s, t, k]
  end

  def solve(s, t, k)
    return true if s == t && (k >= s.length * 2 || k.even?)
    i = 0
    i += 1 while s[i] == t[i]
    diff = s.length + t.length - i * 2

    return true if (diff <= k && diff % 2 == k % 2) || (s.length + t.length) < k

    false
  end
end
