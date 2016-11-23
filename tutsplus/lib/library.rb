require "book"
# require "./lib/book.rb"
require "yaml"

class Library
	attr_accessor :books
	def initialize(input_file=false)
		@books = []
		YAML.load_file(input_file).each{ |book| @books << book } if input_file
	end

	def get_books_in_category(category)
		return Array.new(2)
	end

	def get_book(title)
		@books.select { |book| book.title == title }.first
	end

	def save
		return "culo"
	end

	def add_book(book)
		@books << book	  
	end
end


# @lib = Library.new "books.yml"
# puts @lib.get_book("Javascript Patterns")