class Node

  attr_accessor :location,:parent,:children

  def initialize(location)
    @parent = nil
    @location = location
    @children = []
  end
end
