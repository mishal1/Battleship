class Cell

  def initialize 
    @have_ship = false
    @hit = false
  end

  attr_accessor :have_ship
  attr_accessor :hit

  def is_part_of_a_ship
    @have_ship = true
  end

  def has_been_hit
    @hit = true
  end

end