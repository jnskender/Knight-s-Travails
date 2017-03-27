require './Node.rb'
class Move_Graph
  attr_accessor :start

  def initialize()

  end


  def create_move_graph(start,finish,piece)
    
  end

end

class Knight
  attr_reader possible_moves:
  def initialize()
    @possible_moves = [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[1,-2],[-1,2],[-1,-2]]
  end

end
#knight_moves([3,3],[4,3])



=begin
  _ _ _ _ _ _ _ _
7|_|_|_|_|_|_|_|_|
6|_|_|_|_|_|_|_|_|
5|_|_|_|_|_|_|_|_|
4|_|_|_|_|_|_|_|_|
3|_|_|_|_|_|_|_|_|
2|_|_|_|_|_|_|_|_|
1|_|_|_|_|_|_|_|_|
0|_|_|_|_|_|_|_|_|
  0 1 2 3 4 5 6 7
=end
