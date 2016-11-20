class StringCalculator
	def self.add(string="")
		string.split(",").inject(0) do |result, element|
			result + element.to_i
		end
	end
end
