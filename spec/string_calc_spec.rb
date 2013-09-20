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
		it "should return 6 if 1, 2, 3 is entered" do
			calc = make_calc.add("1,2,3")
			calc.should eq 6
		end
		it "should return 28 if 1, 2, 3, 4, 5, 6, 7 is entered" do
			calc = make_calc.add("1,2,3,4,5,6,7")
			calc.should eql 28
		end
		it "should return 19 if 10, 9 is entered" do
			calc = make_calc.add("10,9")
			calc.should eql 19
		end

		context "it should handle new line characters" do
			it "should return 6 if 1\n2,3 is entered" do
				calc = make_calc.add("1\n2,3")
				calc.should eql 6
			end
		end

		context "should support different delimiters" do
			it "should return 3 for //;\n1;2" do
				calc = make_calc.add("//;\n1;2")
				calc.should eql 3
			end
		end

		it "should throw an exception if -1 entered" do
			expect { make_calc.add("-1") }.to raise_error
		end

		it "should throw an exception if -1, -2 entered and list the offending negative numbers" do
			expect { make_calc.add("-1,-2") }.to raise_error('Cannot handle negative numbers: -1, -2')
		end
		it "should throw an exception if -10, -2 entered and list the offending negative numbers" do
			expect { make_calc.add("-10,-2") }.to raise_error('Cannot handle negative numbers: -10, -2')
		end
	 end
end
