
require_relative 'board' 


require_relative 'cell'
class Display

  def initialize(board, player_name, tracking = false)
    @board, @player_name, @tracking = board, player_name, tracking
  end

  def show
    show_board_info
    show_col_headers
    show_rows
  end

  def show_board_info
    puts "Displaying board for player #{@player_name}"
    puts @tracking ? "Tracking Board" : "Showing Ships"
    puts
  end

  def show_col_headers
    show_row(' ' * 3, ('a'..'j').to_a )
    row_separator
  end

  def show_rows
    rows.each_with_index do |row, index| 
      show_row((index+1).to_s.ljust(3), map_cells(row))
      row_separator
    end
  end

  def show_row(label,array)
    print label + '|'
    array.each { |item| print item.to_s + '|' }
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
      display = ( cell.have_ship ? 's' : 'w' )
      display.upcase if cell.hit
      display
    end
  end
end

class FancyDisplay < Display
  gem_installed? = true 
  begin
    require 'colorize' 
  rescue 
    gem_installed? = false #  'gem install colorize' on command line
  end

  def map_cells(row)
    row.map do |cell|
      if gem_installed?
        display = ( cell.have_ship ? 's'.magenta : 'w'.blue )
      else
        display = ( cell.have_ship ? 's' : 'w' )
      end
      display.upcase if cell.hit
      display
    end
  end
end