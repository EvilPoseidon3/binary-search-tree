
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

  def info_display
    puts "value - #{self.data}\n index - #{self.index}"

end

# def self.find(interger)
#   self.compact.each { |node|
#   if node.data == interger
#   puts "Node at index #{node.index} with value #{node.data}"
#   end}
# end
