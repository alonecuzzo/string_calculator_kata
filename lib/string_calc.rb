class StringCalculator
	def add(numbers)
		puts "len" << numbers.length
		return 2 if numbers.length == 2
		return numbers.to_i if numbers != ""
		return 0
	end
end
