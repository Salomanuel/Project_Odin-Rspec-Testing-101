class RunningWeek
	attr_accessor  :archive
	def initialize
		@archive ||= {}
	end
end

class Run
	attr_accessor :duration, :distance, :timestamp
	def initialize(data)
		@duration  = data[:duration]
		@distance  = data[:distance]
		@timestamp = DateTime.parse(data[:timestamp])
		
	end

	def self.log(data)
		# @archive  							 ||= Hash.new
		# @archive[data[:timestamp]] = data
	end

	def self.count
		return @archive.length
	end
end