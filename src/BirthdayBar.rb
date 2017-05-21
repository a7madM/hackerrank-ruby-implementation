# roblem https://www.hackerrank.com/challenges/the-birthday-bar

def getInput
		gets.strip.to_i
		s = gets.strip
		s = s.split(' ').map(&:to_i)
		d, m = gets.strip.split(' ')
		d = d.to_i
		m = m.to_i
		return s,m,d
end


def solve(s, m,d)
	
	count = 0
	for i in 0..s.length
		summation = 0
		z = i
		for x in 1..m
			element = s[z].to_i
			z += 1
			summation = summation + element
			if (summation > d)
				break;
			end
		end
		if summation == d
			count += 1
		end
	end
	return count
end


s,m,d = getInput()
result = solve(s, m, d)
puts result