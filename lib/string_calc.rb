class StringCalculator
	def add(numbers)
		sum = 0
		numbers.split( ',').each { |c| sum += c.to_i }
		return sum
	end
end
