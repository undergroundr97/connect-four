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
    return false if col > 5 || col < 0
    return false if !@board.board[col].include?(" ")
    current_player = @current
    row = @board.board[col].rindex(' ')
    @board.board[col][row] = current_player
    change_player
  end
  def change_player
    @current == @player1 ? @current = @player2 : @current = @player1
  end
  def draw?
     return true if @board.board.flatten.all?{|place| place != ' '} && winner?
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
  def winner?
    @board.board.each do |col|
      col.each_cons(4) do |four|
         four
        return true if four.uniq.size == 1 && !four.include?(' ')
      end
    end
  end
  def play_game
    loop do
    display_board 
    to_check = (0..5).to_a   
    puts "Where you want to play your token #{@current}?"
    col = gets.chomp.to_i
    while !to_check.include?(col)
      puts "Invalid move! do it again!"
      col = gets.chomp.to_i
    end
    play(col)
    if winner? == true
      change_player
      puts "Congratulations #{@current}, you won the game!"
      display_board
      break
    end
    if draw? == true
      display_board
      puts "It's a draw!"
      break
    end
    end
  end


end

c = ConnectFour.new

c.play_game