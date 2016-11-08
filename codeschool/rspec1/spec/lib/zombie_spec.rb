require "spec_helper"
require "zombie"

describe Zombie do
	it "has a name" do
		zombie = Zombie.new
		expect zombie.name == "Ash" 
	end
	it "has no brains" do
		zombie = Zombie.new
		expect zombie.brains < 1
	end

	it "should not be alive" do
		zombie = Zombie.new
		expect zombie.alive == false
	end

	it "is ugly" do
		pending
		zombie = Zombie.new
		expect zombie.ugly == true
	end
end