%w{board cell display player ship}.each {|file| require_relative file}

player = Player.new

player.chooses_cell 'b2'
display = Display.new(player.board,"Adam")
player.board.place_ship_cell(player.ship_coordinates.first)
display.show