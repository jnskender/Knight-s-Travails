class Game_Board

  attr_reader :grid_min, :grid_max, :used_positions

  DEFAULT_SIZE = 8

  def initialize(grid_size = DEFAULT_SIZE)
    @grid_min = 0
    @grid_max = grid_size - 1
    @used_positions = []
  end
end
