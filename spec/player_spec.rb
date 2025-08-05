require_relative '../lib/tic_tac_toe/player'

RSpec.describe Player do
    it "initializes with a name and marker" do
      player = Player.new('Alice', 'X')
      expect(player.name).to eq('Alice')
      expect(player.marker).to eq('X')
    end
  end