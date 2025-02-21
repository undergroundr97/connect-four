require_relative 'board'

class ConnectFour
  attr_accessor :player1
  def initialize
    @player1 =- "\u2689"
    @player2 = ''
  end
end