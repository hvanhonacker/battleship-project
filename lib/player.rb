class HumanPlayer

  def initialize(name)
    @name = name
  end

  def get_play
    puts "What position would you like to strike? (ex: 4, 8) "
    user_move = gets.chomp.strip
    user_move.split(',').map(&:to_i)
  end

end
