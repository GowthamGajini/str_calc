class Calculator
	def initialize(str)
		@str = str
	end

	def add
		return 0 if @str.empty?

		delimiter = ","
		delimiter, @str = @str.split("\n") if @str.include?("//")
		delimiter = delimiter[-1]
		input_list = @str.gsub("\n", delimiter).split(delimiter)
		input_list.map(&:to_i).sum
	end
end