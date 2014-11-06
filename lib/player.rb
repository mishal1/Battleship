class NeedsToBeUnique < Exception
	def message
		"Players are not allowed to select the same cell twice"
	end
end

class IncorrectCharacterFormat < Exception
	def message
		"Input must begin with A-J and end with 1-10"
	end
end

class Player

	attr_accessor :board
	attr_accessor :ship_coordinates
	attr_accessor :shot_coordinates

	def initialize
		@board = Board.new
		@ships =[]
		5.times{@ships << Ship.new}
		@ship_coordinates = []
		@shot_coordinates = []
	end

	def has_board?
		!@board.nil?
	end

	def unplaced_ships
		@ships
	end

	def chooses_cell(cell_key)
		raise IncorrectCharacterFormat unless appropriate_coordinates_for(cell_key)
		raise NeedsToBeUnique if ship_coordinates.include?(cell_key)
		@ship_coordinates << cell_key
	end

	def chooses_cell_for_shooting(cell_key)
		raise IncorrectCharacterFormat unless appropriate_coordinates_for(cell_key)
		raise NeedsToBeUnique if shot_coordinates.include?(cell_key)
		@shot_coordinates << cell_key
	end

	def appropriate_coordinates_for(cell_key)
		( valid_coordinate?(cell_key, 2) && valid_length?(cell_key, 2) ) || ( valid_coordinate?(cell_key, 3) && valid_length?(cell_key, 3) )
	end

	def valid_coordinate?(cell_key, char_count)
		return /[a-jA-J][1-9]/.match(cell_key) if char_count == 2
		/[a-jA-J]10/.match(cell_key) if char_count == 3
	end

	def valid_length?(cell_key, char_count)
		cell_key.length == char_count
	end


end


