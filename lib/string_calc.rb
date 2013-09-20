class StringCalculator
	def add(numbers)
		sum = 0
		numbers.split( "," ).each do |c| 
			c.split( "\n" ).each do |sc|
				sum += sc.to_i
			end
		end
		return sum
	end
end
