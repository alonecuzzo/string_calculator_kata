class StringCalculator
	def add(numbers)
		sum = 0
		numbers.each_char { |c| sum += c.to_i if c != ","}
		return sum if sum > 0
		return 0
	end
end
