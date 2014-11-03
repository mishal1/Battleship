class Square
  def initialize
    @water = true
  end

  def water?
    @water
  end

  def ship?
    true
  end

  def place_ship
    @water = false
  end
end