%w{board cell display player ship}.each {|file| require_relative file}

player = Player.new

player.chooses_cell 'b2'
player.board.place_ship_cell(player.ship_coordinates.first)
player.board.show("Mike")