require_relative "board"
require_relative "player"

#1) how to mark hit, instance variable?, just update board with "m"
class BattleshipGame
  attr_reader :board, :player

  def initialize(player, board)
    @player, @board = player, board
  end

  def play_turn
    pos = player.get_play
    attack(pos)
  end

  def play
    play_turn until game_over?
  end

  def attack(pos)
    board[pos] == :s ? board[pos] == :x : board[pos] ==  " M " #mark board with miss,
  end

  def game_over?
    board.won?
  end

  def display_status
    # display original prepopulated grid
    # each play_turn updates display
  end

  def count
    board.count
  end

end
