require_relative 'cell'

class Board
   def initialize
    @cells_hash = {}
    grid_ref_array.each {|grid_ref| @cells_hash[grid_ref] = Cell.new}
   end


  def cells_hash
    @cells_hash
  end

  def grid_ref_array
    ('a'..'j').map { |letter| (1..10).map { |number| letter + number.to_s } }.flatten   
  end
end

           