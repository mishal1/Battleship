class Cell

  def initialize 
    @have_ship = false
    @hit = false
  end

  attr_accessor :have_ship # why not have_ship?
  attr_accessor :hit # why not hit?

  def is_part_of_a_ship
    @have_ship = true
  end

  def has_been_hit
    @hit = true
  end

end