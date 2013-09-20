require_relative "../lib/string_calc"

describe "StringCalculator" do
	context "Addition" do 
		it "should return zero when empty string is entered" do
			calc = StringCalculator.new.add('')
			calc.should eql 0
		end
	end
end
