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

		it "should return 4 if 2,2 is entered" do 
			calc = make_calc.add('2,2')
			calc.should eql 4
		end

		it "should return 55 if 1,2,3,4,5,6,7,8,9,10 is entered" do 
			calc = make_calc.add('1,2,3,4,5,6,7,8,9,10')
			calc.should eql 55
		end

		it "should return 6 if 1\n2,3 is entered" do
			calc = make_calc.add("1\n2,3")
			calc.should eql 6
		end

		it "should return 6 if //;\n1;2 is entered" do
			calc = make_calc.add("//;\n1;2")
			calc.should eql 3
		end

		it "should raise exception if -1 is entered" do
			expect{ make_calc.add("-1") }.to raise_exception
		end
	end
end
