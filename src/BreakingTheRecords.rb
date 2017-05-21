# problem https://www.hackerrank.com/challenges/breaking-best-and-worst-records

def getInput
	gets.to_i
	a = gets.strip
	a = a.split(' ').map(&:to_i)
	return a
end

def getMaxMin(a)
	max = a[0]
	min = a[0]
	break_records_times = 0
	break_min_records_times = 0
	a.each {
		|element|
		if max < element
			max = element
			break_records_times += 1
		end

		if element < min
			min = element
			break_min_records_times += 1
		end
	}

	return break_records_times, break_min_records_times
end

a 	 = getInput()
break_records_times, break_min_records_times = getMaxMin(a)

puts "#{break_records_times} #{break_min_records_times}"
