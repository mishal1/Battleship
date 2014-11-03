class Square
  def initialize
    @water = true
    @ship = false
  end

  def water?
    @water
  end

  def ship?
    @ship
  end

  def place_ship
    @water = false
    @ship = true
  end
end