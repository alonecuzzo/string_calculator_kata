require_relative "./spec_helper"
require_relative "../lib/string_calc"

def make_calc
	return StringCalculator.new
end

describe "String Calculator" do
	context "addition" do
		it "should return 0 when an empty string is entered" do
			calc = make_calc.add("")
			calc.should eql 0 
		end
		it "should return 1 if 1 is entered" do 
			calc = make_calc.add("1")
			calc.should eql 1 
		end 
		it "should return 2 if 2 is entered" do
			calc = make_calc.add("2")
			calc.should eql 2 
		end
		it "should return 2 if 1, 1 is entered" do
			calc = make_calc.add("1,1")
			calc.should eql 2
		end
		it "should return 3 if 1, 2 is entered" do
			calc = make_calc.add("1,2")
			calc.should eql 3
		end
	 end
end
