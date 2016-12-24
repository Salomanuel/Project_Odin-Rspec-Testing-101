require "rspec"
require "detective"

describe Detective do
	# it "doesn't find much" do
	# 	subject = Detective.new
	# 	result  = subject.investigate
	# 	expect(result).to eq "Nothing to investigate :("
	# end
	it "says what noise the thingie makes" do
		thingie = double(:thingie, prod: "oi")
		subject = Detective.new(thingie)
		result = subject.investigate
		expect(result).to eq "It went 'oi'"
	end
end