require "spec_helper"

describe Book do
	before :each do
		@book = Book.new("Title", "Author", :category)
	end

	describe "#new" do
		it "takes three parameters and returns a Book" do
			expect @book be_an_instance_of Book
		end
	end
end

