#https://www.hackerrank.com/challenges/minimum-distances/problem

class MinimumdDistance
  def input
  end

  def minimum_distance(array)
    look_up = {}
    array.each_with_index do |item, index|
      look_up[item] ? look_up[item] << index : look_up[item] = [index]
    end

    pairs = look_up.values.select { |item| item.length == 2 }
    return -1 if pairs.length.zero?

    distances = []

    pairs.each do |pair|
      distances << (pair[0] - pair[1]).abs
    end

    distances.min
  end
end
