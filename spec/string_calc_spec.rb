require_relative "../lib/string_calc"

describe "StringCalculator" do

	def make_calc
		StringCalculator.new
	end

	context "Addition" do 
		it "should return zero when empty string is entered" do
			calc = make_calc.add('')
			calc.should eql 0
		end
		
		it "should return 1 if 1 is entered" do 
			calc = make_calc.add('1')
			calc.should eql 1
		end

		it "should return 2 if 2 is entered" do 
			calc = make_calc.add('2')
			calc.should eql 2
		end

		it "should return 3 if 1,2 is entered" do 
			calc = make_calc.add('1,2')
			calc.should eql 3
		end
	end
end
