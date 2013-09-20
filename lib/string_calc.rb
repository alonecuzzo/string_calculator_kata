class StringCalculator
	def add(numbers)
		return numbers[0].to_i + numbers[2].to_i if numbers.length > 1
		return numbers.to_i if numbers != ''
		return 0
	end
end
