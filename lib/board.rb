class Board

   def initialize
      @cells_hash = {}
     grid_ref_array.each {|grid_ref| @cells_hash[grid_ref] = Cell.new}
   end


  def cells
    @cells_hash
  end

  def grid_ref_array
    return_array = []
    ('a'..'j').each do |letter|
      (1..10).each do |number|
        return_array << letter+number.to_s
      end
    end 
    return_array 
  end

end