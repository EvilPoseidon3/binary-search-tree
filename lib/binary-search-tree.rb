
class Node
attr_accessor :data,:index,:internode,:leafnode,:left,:right
  def initialize(nodedata)
    @data = nodedata
    @internode = nil
    @leafnode = nil
    @left = nil
    @right = nil
    @index = 0
  end


end