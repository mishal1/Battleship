require "./lib/game.rb"
# game starts
# set up 2 players
# 1st one plays/has turn
# then alternate turns until winner
# congratulate winner and end game

describe Game do

	class Player; end

	let(:game) {Game.new}
	let(:player1 ) {double :player}
	let(:player2 ) {double :player}

	

	it "starts with 2 players" do
		game.players = [player1, player2]
		expect(game.players.count).to eq(2)
	end

	it 'player1 plays at some stage' do
		game.players = [player1]
		expect(player1).to receive(:take_a_turn)
		game.play
	end
end