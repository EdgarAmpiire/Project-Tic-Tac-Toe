# lib/tic_tac_toe.board.rb
class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(9, '')
  end

  def display
    puts
    puts "#{grid[0]} | #{grid[1]} | #{grid[2]}"
    puts '---+---+---'
    puts "#{grid[3]} | #{grid[4]} | #{grid[5]}"
    puts '---+---+---'
    puts "#{grid[6]} | #{grid[7]} | #{grid[8]}"
    puts
  end

  def update(position, marker)
    grid[position] = marker
  end

  def valid_move?(position)
    position.between?(0, 8) && grid[position] == ''
  end

  def full?
    grid.none? { |cell| cell = '' }
  end

  def winner?(marker)
    wins = [
      [0, 1, 2],  [3, 4, 5],  [6, 7, 8],  # rows
      [0, 3, 6],  [1, 4, 7],  [2, 5, 8],  # cols
      [0, 4, 8],  [2, 4, 6] # diagonal
    ]
    wins.any? { |combo| combo.all? { |i| grid[i] == marker } }
  end
end
