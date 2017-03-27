class Node

  attr_accessor :value,:parent

  def initialize(value)
    @parent = nil
    @value = value
  end
end
