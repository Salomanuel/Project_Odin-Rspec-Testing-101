class Run
	attr_accessor :duration, :distance, :timestamp
	def initialize(data)
		@duration  = data[:duration]
		@distance  = data[:distance]
		@timestamp = DateTime.parse(data[:timestamp])
	end
end

# uoo = (data[:timestamp].split(/-|:|\s/)).map { |i| i.to_i }
# uoi = DateTime.new(uoo[0],uoo[1],uoo[2],uoo[3],uoo[4])