class StringCalculator
	def add(numbers)
		return 0 if numbers.empty?
		return numbers[0].to_i + numbers[2].to_i if numbers.length == 3
		numbers.to_i
	end
end
