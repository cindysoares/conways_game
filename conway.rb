
class Conway

	attr_accessor :board

	def initialize(n)
		 @board = n.times.map{ n.times.map{ 0 } }
	end

	def self.visit(node_state, neighbours) 
		alive_neighbours = neighbours.select{ |e| e!=0 }.count
		if node_state==1			
			if alive_neighbours==2 || alive_neighbours==3
				1
			else 
				0
			end
		else
			if alive_neighbours==3
				1
			else
				0
			end
		end 
	end
end