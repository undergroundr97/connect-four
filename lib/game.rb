require_relative 'board'

class ConnectFour
  attr_accessor :player1, :board, :current
  def initialize
    @player1 = "\u2689"
    @player2 = "\u2663"
    @current = @player1
    @board = Board.new
  end
  def play(row)
    current_player = @current
    @board.board[row] << current_player
    change_player
  end
  def change_player
    @current == @player1 ? @current = @player2 : @current = @player1
  end

end

c = ConnectFour.new

# p c.board
c.play(5)
c.play(4)
c.play(3)
p c.board.board