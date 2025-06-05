require_relative '../lib/calculator.rb'

RSpec.describe "String Calculator" do
	context "Executing with empty string" do
		it "Should return 0" do
			calc = Calculator.new("")
			expect(calc.add).to eq(0)
		end
	end
end