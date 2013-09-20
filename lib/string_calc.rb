class StringCalculator
	def add(numbers)
#		raise StandardError, 'Cannot handle negative numbers' if numbers.to_i < 0
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
				raise StandardError, "Cannot handle negative numbers" if sn.to_i < 0
			end
		end
		#raise StandardError, 'Cannot handle negative numbers:' + negative_i_string if negative_i_string.length > 0

		return sum 
	end
end
