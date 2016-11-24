class Library
	attr_reader :books
	def initialize(database=false)
		@books = database ? YAML.load_file(database) : []
	end
end