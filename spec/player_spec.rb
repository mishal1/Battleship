require "./lib/player.rb"

describe Player do

	let(:player) {Player.new}
	let(:board) {double :board}

	it "should have a board" do
		expect(player).to have_board
	end

	it "should have unplaced ships" do
		expect(player.unplaced_ships.count).to eq(5)
	end

	it "should be able to place unique ship position" do
		player.chooses_cell("a1")
		player.chooses_cell("a2")
		expect(player.ship_coordinates.uniq.length == player.ship_coordinates.length).to be true
	end

	it "should be able to place shots with unique positions" do

	end

	# player must choose according to grid -> input validation

end