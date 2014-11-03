require 'square'

describe Square do
  let(:square) { Square.new}

  it 'contains water when made' do    
    expect(square.water?).to be(true) 
  end

  it 'does not contain ship when made' do
    expect(square.ship?).to be(false)
  end

  it "can contain a ship" do
    square.place_ship
    expect(square.ship?).to be(true)
  end

  it 'does not contain water when contains ship' do
    square.place_ship
    expect(square.water?).to be(false)
  end

  it "can be hit" do

  end
  
end