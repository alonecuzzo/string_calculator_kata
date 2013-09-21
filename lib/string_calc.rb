class StringCalculator
	def add(numbers)
		sum = 0
		error_s = ""
		delimiter = ","
		delimiter = numbers[2] if numbers[0] == "/" && numbers[1] == "/"
		numbers = numbers[4..-1] if numbers[0] == "/" && numbers[1] == "/"
		numbers.split( delimiter ).each do |c| 
			c.split( "\n" ).each do |sc|
				sum += sc.to_i
				error_s += " #{sc}," if sc.to_i < 0
			end
		end
		error_s[error_s.length-1] = "" if error_s.length > 0
		raise StandardError, "Cannot accept negative numbers:" + error_s if error_s.length > 0
		return sum
	end
end
