# https://www.hackerrank.com/challenges/beautiful-triplets/problem

class BeautifulTriplets
  def input
    n, difference = gets.rstrip.split(' ').map(&:to_i)
    array = gets.rstrip.split(' ').map(&:to_i)
    [array, difference]
  end

  def count_triplets(difference, array)
    result = 0

    array.each do |item|
      first = item + 2 * difference
      second = item + difference
      result += 1 if array.index(first) && array.index(second)
    end
    result
  end
end

def perform()
  beautiful_triplets = BeautifulTriplets.new

  array, difference = beautiful_triplets.input
  result = beautiful_triplets.count_triplets(difference, array)

  puts result
end

# perform()
