require './spec_helper'
require_relative '../lib/board'
require_relative '../lib/game'

RSpec.describe ConnectFour do
  subject(:game) {ConnectFour.new}
  describe 'boardgame' do
    it 'creates a new board of 6 rows and 7 columns' do
      expect(subject.board.board).to eq([
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' ']
      ])
    end
  end
  describe '#play' do
    let(:col) {col = 3}
    it 'makes a play on corresponding col' do
        subject.play(col)
        expect(subject.board.board[col]).to eq([' ', ' ', ' ', ' ', ' ', ' '," ",'⚉'])
    end   
  end
  describe '#change_player' do 
    it 'changes the current player' do
      expect{subject.change_player}.to change {subject.current}.from("\u2689").to ("\u2663")
    end
  end

end
