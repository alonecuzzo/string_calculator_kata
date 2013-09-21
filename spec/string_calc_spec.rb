require_relative "../lib/string_calc"

describe "StringCalculator" do
	context "Addition" do
		it "should return 0 when empty string is entered" do
			calc = StringCalculator.new.add("")
			calc.should eql 0
		end
		it "should return 1 when 1 is entered" do
			calc = StringCalculator.new.add("1")
			calc.should eql 1
		end
	end
end
