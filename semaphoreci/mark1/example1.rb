# => TEST/UNIT
def test_making_order
	book     = Book.new(:title =>"RSpec Intro", :price => 20)
	customer = Customer.new
	order    = Order.new(customer, book)

	order.submit

	assert(customer.orders.last        == order)
	assert(customer.ordered_books.last == books)
	assert(order.complete?)
	assert(!order.shipped?)
end

# => RSpect
describe Order do
	describe "#submit" do

		before do
			@book     = Book.new(:title => "RSpect Intro", :price => 20)
			@customer = Customer.new
			@order    = Order.new(@customer, @book)

			@order.submit
		end

		describe "customer" do
			it "puts the ordered book in customer's order history" do
				expect(@customer.orders).to_include(@order)
				expect(@customer.ordered_books).to_include(@book)
			end
		end

		describe "order" do
			it "is marked as complete" do
				expect(@order).to be_complete
			end

			it "is not yet shipped" do
				expect(@order.not_to be_shipped)
			end
		end
	end
end