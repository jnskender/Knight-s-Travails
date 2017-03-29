class Game_Board

  attr_reader :GRID_MIN, :GRID_MAX

  def initialize(grid_size = 8)
    @GRID_MIN = 0
    @GRID_MAX = grid_size - 1
  end
end
