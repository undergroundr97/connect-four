require_relative 'board'

class ConnectFour
  attr_accessor :player1, :board, :current
  def initialize
    @player1 = "\u2689"
    @player2 = "\u2663"
    @current = @player1
    @board = Board.new
  end
  def play(col)
    current_player = @current
    row = @board.board[col].rindex(' ')
    @board.board[col][row] = current_player
    change_player
  end
  def change_player
    @current == @player1 ? @current = @player2 : @current = @player1
  end
  def draw?
     @board.board.none?{|place| place == ' '}
  end
  def display_board
    puts "0 1 2 3 4 5"
    (0..6).each do |row|
      (0..5).each do |col|
        print @board.board[col][row] == ' ' ? "\u25CB " : "#{@board.board[col][row]} "
      end
      puts row
    end
  end


end

c = ConnectFour.new

# p c.board
c.play(5)
c.play(4)
c.play(3)
c.play(5)
c.play(5)
c.play(5)
c.play(5)
c.play(5)

# p c.board.board
puts c.display_board

c.play(4)
c.display_board