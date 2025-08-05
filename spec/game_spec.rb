require_relative '../lib/tic_tac_toe/game'
require_relative '../lib/tic_tac_toe/player'
require_relative '../lib/tic_tac_toe/board'

RSpec.describe Game do
  subject(:board) { instance_double(Board) }
  subject(:player1) { Player.new('Alice', 'X') }
  subject(:player2) { Player.new('Bob', 'O') }

  before do
    allow(Board).to receive(:new).and_return(board)
    allow(board).to receive(:display)
    allow(board).to receive(:update)
    allow(board).to receive(:winner?).and_return false
    allow(board).to receive(:full?).and_return false
  end

  it 'Switches players after each turn' do
    game = Game.allocate
    game.instance_variable_set(:@board, board)
    game.instance_variable_set(:@player1, player1)
    game.instance_variable_set(:@player2, player2)
    game.instance_variable_set(:@current_player, player1)

    game.send(:switch_players)
    expect(game.instance_variable_get(:@current_player)).to eq(player2)
  end
end
