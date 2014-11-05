require_relative 'board'
require_relative 'cell'
class Display

  def initialize(board, player_name, tracking = false)
    @board, @player_name, @tracking = board, player_name, tracking
  end
  def show

    puts "Displaying board for player #{@player_name}"
    puts @tracking ? "Tracking Board" : "Showing Ships"

    show_row('  ',('a'..'j').to_a)
    row_separator
    rows.each_with_index do |row, index| 
      show_row(((index+1)%10).to_s + ' ' , map_cells(row))
      row_separator
    end
  end

  def show_row(label,array)
    print label + ' |'
    array.each {|item| print item.to_s + '|'}
    puts
  end

  def row_separator
    print ' ' * 3 + '-' * 21
    puts
  end

  def rows
    @board.cells_hash.values.each_slice(10).to_a
  end

  def map_cells(row)
    row.map do |cell|
      display = (cell.have_ship ? 's' : 'w')
      display.upcase if cell.hit
      display
    end
  end

end
