class StringCalculator
	def add(numbers)
		delimiter = ','
		sum = 0
		negative_is = ''
		trim_distance = 4
		if numbers[0] == "/" && numbers[1] == "/"
			delimiter = numbers[2]
			numbers = numbers[trim_distance..numbers.size]
		end
		numbers.split( delimiter ).each do |n|
			n.split( "\n" ).each do |sn|
				sum += sn.to_i
				negative_is += " #{sn.to_i}," if sn.to_i < 0
			end
		end

		negative_is[negative_is.length-1] = '' if negative_is.length > 0
		raise StandardError, 'Cannot handle negative numbers:' + negative_is if negative_is.length > 0
		
		return sum 
	end
end
