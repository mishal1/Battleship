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

	it "should be able to choose a cell for positioning" do
		player.chooses_cell("a1")
		expect(player.ship_coordinates.count).to eq 1
	end

	it "cannot place the same cell twice" do
		player.chooses_cell("a1")
		expect{player.chooses_cell("a1")}.to raise_error(NeedsToBeUnique)
	end

	it "should choose cell names that are two characters long, begin with A-J and end with 1-10" do
		expect{player.chooses_cell("a1donkey")}.to raise_error(IncorrectCharacterFormat)
	end

	it "should be able to place unique ship position" do
		player.chooses_cell("a1")
		player.chooses_cell("a2")
		expect(player.ship_coordinates.uniq.length == player.ship_coordinates.length).to be true
	end

	it "should be able to choose a cell for shooting" do
		player.chooses_cell_for_shooting("a1")
		expect(player.shot_coordinates.count).to be 1
	end

	it "cannot hit the same cell twice" do
		player.chooses_cell_for_shooting("a1")
		expect{player.chooses_cell_for_shooting("a1")}.to raise_error(NeedsToBeUnique)
	end

	it "cannot should choose cell names that are two characters long, begin with A-J and end with 1-10" do
		expect{player.chooses_cell_for_shooting("w12")}.to raise_error(IncorrectCharacterFormat)
	end

end