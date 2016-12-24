class Detective
	def initialize(thingie)
		@thingie = thingie
	end

	def investigate
		"It went '#{@thingie.prod}'"
		# "Nothing to investigate :("
	end
end

class Thingie
	def prod
		[ "erp!", "blop!", "ping!", "ribbit!" ].sample
	end
end