
require_relative 'Plane'

class Airport

	attr_reader :plane, :capacity

	DEFAULT_CAPACITY = 50

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
		@planes = []
	end

	def land(plane)
		fail 'no spaces available' if full?
		fail 'the weather is stormy' if stormy?
		@planes << plane
	end


	def release_planes
		fail 'the weather is stormy' if stormy?
		@planes
	end

	def take_off(plane)
		if plane == []
			'the planes taken off'
		else
			plane
		end
	end

	def stormy?
		rand(1..6) < 6? false : true
	end

	private


    def full?
        @planes.count >= capacity
    end


end