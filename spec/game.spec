require './spec_helper'
require_relative '../lib/board'

RSpec.describe Board do
  subject(:board) {Board.new}
  describe 'boardgame' do
    it 'creates a new board of 6 rows and 7 columns' do
      expect(subject.board).to eq([
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' ']
      ])
    end
  end
end