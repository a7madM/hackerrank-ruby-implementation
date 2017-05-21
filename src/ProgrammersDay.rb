#problem https://www.hackerrank.com/challenges/day-of-the-programmer

def solve(year)

    if (year == 1918)
        return "26.09.#{year}"
    end

    if isLeap(year)
        return "12.09.#{year}"
    else
        return "13.09.#{year}"
    end
end

def isLeap(year)
    if year <= 1918 && year % 4 ==0
        return true
    end


    if year % 2 !=0
        return false
    end
    
    if year % 400 == 0
        return true
    end

    if year % 100 !=0 && year % 4 == 0
        return true
    end
    return false
end
year = gets.strip.to_i
result = solve(year)
puts result