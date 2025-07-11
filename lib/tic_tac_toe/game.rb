# lib/tic_tac_toe/game.rb

class Game
  def initialize
    puts 'Welcome to Tic Tac Toe'
    print 'Player 1 name(X): '
    name1 = gets.chomp
    print 'Player 2 name(O): '
    name2 = gets.chomp

    @player1 = Player.new(name1.empty? ? 'Player 1' : name1, 'X')
    @player2 = Player.new(name2.empty? ? 'Player 2' : name2, 'O')
    @current_player = @player1
    @board = Board.new
  end

  def play
    loop do
      @board.display
      index = get_move
      @board.update(index, @current_player.marker)

      if @board.winner?(@current_player.marker)
        @board.display
        puts "🎉 #{@current_player.name} wins!"
        break
      elsif @board.full?
        @board.display
        puts "It's a draw!"
        break
      else
        switch_players
      end
    end
  end

  private

  def get_move
    loop do
      print "Player #{@current_player.name}, choose a position (1-9): "
      input = gets.chomp
      if input.match(/^[1-9]$/)
        index = input.to_i - 1
        return index if @board.valid_move?(index)
        puts 'Position already taken.'
      else
        puts 'Invalid input.'
      end
    end
  end

  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end