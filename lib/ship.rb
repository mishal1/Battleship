class Ship

	attr_reader :member_cells

	def initialize
		@sunk = false
		@member_cells = []
	end

	def sunk?
		@sunk
	end

	def sink!
		@sunk = true
	end

	def cell_count
		member_cells.count
	end

	def accept_cells(cell)
		member_cells << cell
	end

end