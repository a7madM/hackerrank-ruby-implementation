# problem https://www.hackerrank.com/challenges/electronics-shop

#!/bin/ruby
def get_input
    s,n,m = gets.strip.split(' ')
    s = s.to_i
    n = n.to_i
    m = m.to_i
    keyboards = gets.strip
    keyboards = keyboards.split(' ').map(&:to_i)
    drives = gets.strip
    drives = drives.split(' ').map(&:to_i)
    return keyboards,drives,s
end

def getMoneySpent(keyboards, drives, s)
    max = -1
    keyboards.each {
        |keyboard|

        drives.each {
            |drive|
            sum = keyboard + drive
            if sum <= s && sum > max
                max = sum
            end
        }
    }
    return max
end

#  The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
keyboards , drives, s = get_input
moneySpent = getMoneySpent(keyboards, drives, s)
puts moneySpent;
