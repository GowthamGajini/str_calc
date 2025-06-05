class Calculator
	def initialize(str)
		@str = str
	end

	def add
		return 0 if @str.empty?

		input_list = @str.gsub("\n", ',').split(",")
		input_list.map(&:to_i).sum
	end
end