class StringCalculator
	def add(numbers)
		sum = 0
		return sum if numbers.empty?
		numbers.split( ',' ).each { |c| sum += c.to_i }
		sum
	end
end
