class Library
	attr_reader :books
	def initialize(database=false)
		@books = []
	end
end