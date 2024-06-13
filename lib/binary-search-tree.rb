
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

# def self.find(interger)
#   self.compact.each { |node|  
#   if node.data == interger
#   puts "Node at index #{node.index} with value #{node.data}"
#   end}
# end