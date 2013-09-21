class StringCalculator
	def add(numbers)
		sum = 0
		return sum if numbers.empty?
		numbers.split( "," ).each do |c| 	
			c.split( "\n" ).each do |sc|
				sum += sc.to_i 
			end
		end
		sum
	end
end
