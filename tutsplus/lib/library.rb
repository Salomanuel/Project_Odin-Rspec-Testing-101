require "book"
# require "./lib/book.rb"
require "yaml"

class Library
	attr_accessor :books
	def initialize(input_file=nil)
		@books = []
		if !input_file.nil?
			list = YAML.load_file(input_file)
			# list = YAML.load_file("../#{input_file}")
			list.each{ |book| @books << book }
		end
	end

	def get_books_in_category(category)
		return Array.new(2)
	end

	def get_book(title)
		@books.each do |book|
			return book if book.title == title
		end
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