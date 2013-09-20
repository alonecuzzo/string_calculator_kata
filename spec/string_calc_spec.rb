require_relative "../lib/string_calc"

describe "StringCalculator" do
	context "Addition" do 
		it "should return zero when empty string is entered" do
			calc = StringCalculator.new.add('')
			calc.should eql 0
		end
		
		it "should return 1 if 1 is entered" do 
			calc = StringCalculator.new.add('1')
			calc.should eql 1
		end

		it "should return 2 if 2 is entered" do 
			calc = StringCalculator.new.add('2')
			calc.should eql 2
		end
	end
end
