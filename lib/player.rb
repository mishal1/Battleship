require_relative 'board'
require_relative'ship'
require_relative'cell'
require_relative'display'


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
		registering_coords(cell_key, ship_coordinates)
	end

	def chooses_cell_for_shooting(cell_key)
		registering_coords(cell_key, shot_coordinates)
	end

	def appropriate_coordinates_for(cell_key)
		( valid_coordinate?(cell_key) && valid_length?(cell_key, 2) ) || ( valid_coordinate?(cell_key) && valid_length?(cell_key, 3) )
	end

	def valid_coordinate?(cell_key)
		letter, number = cell_key.match(/\w/)[0], cell_key.match(/\d+/)[0]
		return true if number.to_i <= 10 && [*"a".."j"].include?(letter.downcase)
		false
	end

	def valid_length?(cell_key, char_count)
		cell_key.length == char_count
	end

	def registering_coords(cell_key, coordinates)
		raise IncorrectCharacterFormat unless appropriate_coordinates_for(cell_key)
		raise NeedsToBeUnique if coordinates.include?(cell_key)
		coordinates << cell_key
	end

end

