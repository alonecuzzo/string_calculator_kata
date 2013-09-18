require_relative "./spec_helper"
require_relative "../lib/string_calc"

def make_calc
	return StringCalculator.new
end

describe "String Calculator" do
	context "addition" do
		it "should return zero when an empty string is entered" do
			calc = make_calc.add("")
			calc.should eql 0 
		end
		it "should return one if one is entered" do 
			calc = make_calc.add("1")
			calc.should eql 1 
		end 
		it "should return two if two is entered" do
			calc = make_calc.add("2")
			calc.should eql 2 
		end
		it "should return two if 1, 1 is entered" do
			calc = make_calc.add("1,1")
			calc.should eql 2
		end
	 end
end
