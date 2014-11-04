require 'board'

class Cell; end

describe Board do
  context 'basic properties' do
    
    let(:cell) {double :cell, :is_a? => true }
    let(:board) {Board.new(cell)}

    it 'can contain something' do
      expect(board.cells.first).not_to be_nil
    end

    it "has a grid reference a1 " do
      expect(board.cells.keys).to include('a1')
    end

    it 'has a cell stored at grid ref a1' do
      # puts board.cells['a1']
      expect(board.cells['a1'].is_a?(Cell)).to be true
    end


  end
end