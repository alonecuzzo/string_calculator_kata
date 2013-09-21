class StringCalculator
	def add(numbers)
		sum = 0
		return sum if numbers.empty?
		delimiter = ","
		delimiter = numbers[2] if numbers[0] == "/" && numbers[1] == "/"
		numbers = numbers[4..-1] if numbers[0] == "/" && numbers[1] == "/"
		numbers.split( delimiter ).each do |c| 	
			c.split( "\n" ).each do |sc|
				sum += sc.to_i 
			end
		end
		sum
	end
end
