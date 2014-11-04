require 'board'


describe Board do
  context 'basic properties' do
    
    let(:cell) {double :cell, :is_a? => true }
    let(:board) {Board.new}

    it 'can contain something' do
      expect(board.cells.first).not_to be_nil
    end

    it "has a grid reference a1 " do
      expect(board.cells.keys).to include('a1')
    end

    it 'has a cell stored at grid ref a1' do
      expect(board.cells['a1'].is_a?(Cell)).to be true
    end

    it "knows about an array which contains 'a1','b10','g8' & 'j10'" do
      expect(board.grid_ref_array).to include('a1','b10','g8','j10')
    end

    it 'grid ref array has 100 elements' do
      expect(board.grid_ref_array.size).to eq(100)
    end

    it 'has a cell stored at several grid refs' do
      expect(board.cells['a1'].is_a?(Cell)).to be true
      expect(board.cells['c5'].is_a?(Cell)).to be true
      expect(board.cells['d4'].is_a?(Cell)).to be true
    end

    it 'cells hash must include 100 elements' do
      expect(board.cells.size).to eq(100)
    end



  end
end