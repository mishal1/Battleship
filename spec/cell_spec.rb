require 'cell'

describe Cell do
  
  let(:cell) {Cell.new}

  it "should not contain a ship by default" do
    expect(cell.have_ship).to be false
  end


  it "should be able to contain a ship" do 
    cell.is_part_of_a_ship
    expect(cell.have_ship).to be true
  end


  it "should know if it has been hit" do
    cell.has_been_hit
    expect(cell.hit).to be true
  end



end


