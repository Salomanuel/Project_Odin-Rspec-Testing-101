class Zombie 
	attr_accessor :name, :brains, :alive
	def initialize(name="Ash", brains=0)
		@name   = name
		@brains = brains
		@alive  = false
	end
end

uoo = Zombie.new