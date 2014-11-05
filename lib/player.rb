class Player

	attr_accessor :board
	attr_accessor :ship_coordinates

	def initialize
		@board = Board.new
		@ships =[]
		5.times{@ships << Ship.new}
		@ship_coordinates = []
	end

	def has_board?
		@board
	end

	def unplaced_ships
		@ships
	end

	def chooses_cell(cell_key)
		@ship_coordinates << cell_key
	end

end


