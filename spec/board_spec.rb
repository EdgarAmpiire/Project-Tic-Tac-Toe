require_relative '../lib/tic_tac_toe/board'

# frozen_string_literal: true

RSpec.describe Board do
  subject(:board) { described_class.new }
  describe "valid move?" do
    it "returns true for an empty position within range" do
      expect(board.valid_move?(0)).to be true
    end

    it "returns false for an out-of-range position" do
      expect(board.valid_move?(10)).to be false
    end

    it "returns false for a taken position" do
      board.update(0, 'X')
      expect(board.valid_move?(0)).to be false
    end
  end

  describe '#winner?' do
    it 'detects a row win' do
      board.update(0, 'X')
      board.update(1, 'X')
      board.update(2, 'X')
      expect(board.winner?('X')).to be true
    end

    it 'detects a column win' do
      board.update(0, 'O')
      board.update(3, 'O')
      board.update(6, 'O')
      expect(board.winner?('O')).to be true
    end

    it 'detects a diagonal win' do
      board.update(0, 'X')
      board.update(4, 'X')
      board.update(8, 'X')
      expect(board.winner?('X')).to be true
    end
  end

  describe '#full?' do
    it 'returns true when the board is full' do
      9.times { |i| board.update(i, 'X') }
      expect(board.full?).to be true
    end

    it 'returns false when there are empty spaces' do
      expect(board.full?).to be false
    end
  end
end
