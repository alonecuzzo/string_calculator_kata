class StringCalculator
	def add(numbers)
		sum = 0
		numbers.each_char {|c| sum += c.to_i if c =~ /[0-9]/}
		return sum 
	end
end
