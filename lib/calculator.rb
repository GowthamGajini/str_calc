class Calculator
	def initialize(str)
		@str = str
	end

	def add
		return 0 if @str.empty?

		delimiter = ","
		negative_inputs = ""
		delimiter, @str = @str.split("\n") if @str.include?("//")
		delimiter = delimiter[-1]
		input_list = @str.gsub("\n", delimiter).split(delimiter)
		negative_inputs = input_list.select{|n| n.include?("-") }
		                            .join(",")
		return input_list.map(&:to_i).sum if negative_inputs.empty?

		"negative numbers not allowed #{negative_inputs}"
	end
end