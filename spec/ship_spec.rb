require 'ship'

describe Ship do

	let(:ship) {Ship.new}
	let(:cell) {double :cell}
 
	it 'should be floating on water when initialized' do
		expect(ship.sunk?).to be false
	end

	it 'should be able to sink' do
		ship.sink!
		expect(ship.sunk?).to be true
	end

	it 'must initialise without any cells' do
		expect(ship.cell_count).to be 0
	end

	it 'must be able to accept cells' do
		ship.accept_cells(:cell)
		expect(ship.cell_count).to be 1
	end

end