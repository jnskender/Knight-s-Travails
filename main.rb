require './Graph.rb'
require './Knight.rb'

graph = Graph.new
knight = Knight.new
graph.piece_move([0,0],[7,7],knight)
