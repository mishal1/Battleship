class Player

	attr_accessor :board
	attr_accessor :coordinates

	def initialize
		@board = Board.new
		@ships =[]
		5.times{@ships << Ship.new}
		@coordinates = []
	end

	def has_board?
		@board
	end

	def unplaced_ships
		@ships
	end

	def chooses_cell(cell_key)
		@coordinates << cell_key
	end

end


