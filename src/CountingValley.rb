# problem https://www.hackerrank.com/challenges/counting-valleys

def get_input
    gets.strip.to_i
    a = gets.strip
    a = a.split('').map(&:to_s)
    return a
end

def solve_problem(a)
    count = 0
    sum = 0
    a.each {
        |item|
        if item == "U"
            sum += 1  
        else
            if sum == 0
                count += 1
            end
            sum -= 1
        end
    }
    return count
end

a = get_input
result = solve_problem(a)
puts result