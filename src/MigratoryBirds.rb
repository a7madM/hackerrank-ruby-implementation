# problem https://www.hackerrank.com/challenges/migratory-birds

def input
    gets.strip.to_i
    types = gets.strip
    types = types.split(' ').map(&:to_i)
    return types
end

def solveProblem(types)
    hash = {1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0}  
    for i in 0...types.length
        element = types[i]
        val = hash[element]
        hash[element] = val + 1
    end
    mostType = types[0]
    max = hash[1]
    hash.each {
        |k,v|
        if max < v
            max = v
            mostType = k
        end
    }
    return mostType
end


def input_from_file
    blocksCount = 0
    types = ""
    IO.foreach("../input/migrationBirds.txt") {
        |block|
        blocksCount += 1
        types += block
    # print "It's a blcok " + block + " End ob Block" 
    }

    types = types.split(' ').map(&:to_i)
    return types
end

types = input
# types = input_from_file()
#print types
mostType = solveProblem(types)
puts mostType