class Board
  #1) how to populate gird with ships
  #2) need to display board and update

  attr_accessor :grid

  def initialize(grid = Board.default_grid)
    @grid = grid
  end

  def self.default_grid
    Array.new(10) { Array.new(10)}
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def over?
    grid.flatten.none? { |pos| pos.nil? }
  end

  def populate_grid
#how many ships do we populate with? 5
#create random size
#how to randomly place on grid, mark with :s
#need help
    #rand_ship_size = rand(1..grid.length)
    #rand_ship_start = [rand(1..grid.length), rand(1..grid.length)
    #5.times do |ship|
      #ship = grid[rand_ship_start] == :s if grid[rand_start.empty?]
    #end
  end

  def count
    grid.flatten.select { |pos| pos == :s }.length
  end

  def empty?(pos=nil) # why do we make the default value nil?
    board[pos].nil?
  end

  def full?
    grid.flatten.none? { |pos| pos.nil? }
  end

  def place_random_ship
    raise "Board is full" if board.full?
    #how to place :s consecutively on rows or columns with predetermined sizes. ship_hash?

  end

  def won?
    grid.none? { |mark| mark == :s }

  end

  def in_range?(pos)
    pos.all? { |num| num.between?(0, 9)}
  end
end
