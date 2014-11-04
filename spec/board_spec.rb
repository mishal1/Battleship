require 'board'

describe Board do
  context 'basic properties' do
    
    let(:water) {double :square, :water? => true}
    let(:board) {Board.new([water])}

    it 'can contain something' do
      expect(board.squares.first).not_to be_nil
    end

    it 'first square contains water when initiated' do
      expect(board.squares.first.water?).to be(true)
    end


  end
end