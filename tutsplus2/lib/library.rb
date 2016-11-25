class Library
	attr_reader :books
	def initialize(database=false)
		@books = database ? YAML.load_file(database) : []
	end

	def get_books_in_category(category)
		return @books.select{ |book| book.category == category }
	end

	def add_book(book)
		@books << book
	end

	def get_book(title)
		@books.each { |book| return book if book.title == title }
	end
end
