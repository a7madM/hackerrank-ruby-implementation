# problem https://www.hackerrank.com/challenges/migratory-birds

def input
  gets.strip.to_i
  types = gets.strip
  types = types.split(' ').map(&:to_i)
  types
end

def solve_problem(types)
  hash = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0 }
  for i in 0...types.length
    element = types[i]
    val = hash[element]
    hash[element] = val + 1
  end
  mostType = types[0]
  max = hash[1]
  hash.each do |k, v|
    if max < v
      max = v
      mostType = k
    end
  end
  mostType
end

def input_from_file
  blocksCount = 0
  types = ''
  IO.foreach('../input/migrationBirds.txt') do |block|
    blocksCount += 1
    types += block
    # print "It's a blcok " + block + " End ob Block"
  end

  types = types.split(' ').map(&:to_i)
  types
end

types = input
# types = input_from_file()
# print types
mostType = solveProblem(types)
puts mostType
