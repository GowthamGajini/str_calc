class Calculator
	def initialize(str)
		@str = str
	end

	def add
		return 0 if @str.empty?

		@str.split("\n")
		    .map{|n| n.split(",") }
		    .flatten
		    .map(&:to_i)
		    .sum
	end
end