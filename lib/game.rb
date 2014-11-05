class Game

	attr_accessor :players # is this dirty just for test?

 class Player; end
	

  def initialize

  	player1 = Player.new
  	player2 = Player.new
  	@players = [player1, player2]
  end

  def play
  	players.each {|player| player.take_a_turn }
  end
end


