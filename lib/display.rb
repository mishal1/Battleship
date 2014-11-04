require_relative 'board'
require_relative 'cell'
class Board
  def show(player, tracking = false)

    puts "Displaying board for player #{player}"
    puts tracking ? "Tracking Board" : "Showing Ships"

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
    @cells_hash.values.each_slice(10).to_a
  end

  def map_cells(row)
    row.map do |cell|
      display = (cell.have_ship ? 's' : 'w')
      display.upcase if cell.hit
      display
    end
  end

end
empty_board = Board.new

empty_board.show("Adam")