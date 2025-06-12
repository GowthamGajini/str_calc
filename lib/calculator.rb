class Calculator
	def initialize(str)
		@str = str
	end

	def add
		return 0 if @str.empty?

		negative_inputs = ""
		input_list = process_input_str

		if input_list.any?(&:negative?)
		  negative_inputs = input_list.select(&:negative?).join(",")
		  "negative numbers not allowed #{negative_inputs}"
		else
			input_list.sum if negative_inputs.empty?
		end
	end

	def multiply
		return 0 if @str.empty?

		process_input_str.reduce(:*)
	end

	private

	def process_input_str
		delimiter = ","
		delimiter, @str = @str.split("\n") if @str.include?("//")
		delimiter = delimiter[-1]
		input_list = @str.gsub("\n", delimiter).split(delimiter)
		input_list.map(&:to_i)
	end
end