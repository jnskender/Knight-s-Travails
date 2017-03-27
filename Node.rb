class Node

  attr_accessor :location,:parent

  def initialize(location)
    @parent = nil
    @location = location
  end
end
