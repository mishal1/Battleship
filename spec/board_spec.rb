require 'board'

describe Board do
  context 'basic properties' do
    
    let(:square) {double :square, :is_a? => true}
    let(:board) {Board.new}

    # it "contains a square" do
    #   expect(board.squares).to contain(square)
    # end

  end
end