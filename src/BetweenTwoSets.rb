# problem https://www.hackerrank.com/challenges/between-two-sets


#!/bin/ruby

def getInput
    n, m = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    b = gets.strip
    b = b.split(' ').map(&:to_i)
    return a,b
end
def getMin(a,max)
    min = max
    a.each{|element|
        if min > element
            min = element    
        end
    }
   
    return min
end

def getMax(b)

    max = 0
    b.each{|element|
        if max < element
            max = element    
        end
    }
   
    return max
end


def satisfyA(a,x)
   a.each{ |element| 
        if x % element != 0
            return false
        end
   }
   return true
end

def satisfyB(b,x)
    b.each {|element|
        if element % x !=0
            return false
        end
    }
    return true
end

def getTotalX(a, b,min,max)
    totalX = 0
    for i in min..max
        if satisfyA(a,i) && satisfyB(b,i)
            totalX += 1
        end
    end
   return totalX
end

a,b = getInput()

max = getMax(b)
min = getMin(a,max)
totalX = getTotalX(a,b,min,max)
p totalX

#p satisfyA(a,4)
#p satisfyB(b,3)