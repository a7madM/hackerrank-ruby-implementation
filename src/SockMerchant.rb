#problem https://www.hackerrank.com/challenges/sock-merchant?h_r=next-challenge&h_v=zen

def get_input
    gets.strip
    a = gets.strip
    a = a.split(' ').map(&:to_i)

    return a
end

def solve_problem(a)
    hash = Hash.new
    a.each {
        |item|
        if hash.key?(item)
            count = hash[item]
            hash[item] = count + 1
        else
            hash[item] = 1
        end
    }
    pairs = 0
    hash.each {
        |k,v|
        pair = v / 2 
        pairs += pair
    }
    return pairs
end

a = get_input
result = solve_problem(a)
puts result