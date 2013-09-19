class StringCalculator
	def add(numbers)
		sum = 0
		numbers.each_char do|c|
			sum += c.to_i if c != ","	
		end
		return sum if sum > 0
		return numbers.to_i if numbers != ""
		return 0
	end
end
