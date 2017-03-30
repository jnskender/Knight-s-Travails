require './Node.rb'
require './Game_Board'

class Graph
    attr_accessor :root

    def initialize
        @root = nil
        @board = Game_Board.new
    end

    def piece_move(start, finish, piece)
        @root = Node.new(start)
        queue = [@root]

        found_node = nil

        until queue.empty? || !found_node.nil?
            current_node = queue.shift

            piece.moves.each do |move| # for each valid move of piece
                location = [current_node.location[0] + move[0], current_node.location[1] + move[1]]
                next unless valid_location?(location)
                @board.used_positions << location
                node = Node.new(location)
                node.parent = current_node
                current_node.children << node
                queue << node
                found_node = node if location == finish
                break if location == finish
            end # end do
        end # end until

        path = [found_node]
        loop do #fill path array with parents of finishing nodes
          break if path[-1] == @root
          current_node = path[-1]
          path << current_node.parent
        end
        path.reverse!
        puts "You made it in #{path.size - 1} moves! Here's your path:"
        path.each {|node| print "#{node.location} \n"}
    end



    def valid_location?(location)
        return false if location[0] > @board.grid_max || location[0] < @board.grid_min||
                        location[1] > @board.grid_max  || location[1] < @board.grid_min ||
                        @board.used_positions.include?(location)#infinite loop if you dont track
        true
    end
end
