class Calculator
	def initialize(str)
		@str = str
	end

	def add
		return 0 if @str.empty?

		@str.to_i
	end
end