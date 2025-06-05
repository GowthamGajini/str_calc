require_relative '../lib/calculator.rb'

RSpec.describe "String Calculator" do
	context "Executing with empty string" do
		it "Should return 0" do
			calc = Calculator.new("")
			expect(calc.add).to eq(0)
		end
	end

	context "Executing with single integer" do
		it "Should return the integer" do
			calc = Calculator.new("1")
			expect(calc.add).to eq(1)
		end
	end

	context "Executing with two integer" do
		it "Should return the sum of two integer" do
			calc = Calculator.new("1,2")
			expect(calc.add).to eq(3)
		end
	end

	context "Executing with new line operator in string" do
		it "Should return the sum of all integers" do
			calc = Calculator.new("1\n2,3")
			expect(calc.add).to eq(6)
		end
	end

	context "Executing with custom delimiter in string" do
		it "Should return the sum of all integers seperated by delimiter" do
			calc = Calculator.new("//;\n1;3")
			expect(calc.add).to eq(4)
		end
	end

	context "Execute with negative numbers present in the string" do
		it "Should return error message if any negative number present" do
			calc = Calculator.new("-1,-2,-3,4,5")
			expect(calc.add).to eq("negative numbers not allowed -1,-2,-3")
		end
	end
end