
module Comparable

  def compare(root, node)

      if node.data >= root.data
        node.left = true
        node.right = false
      else
        node.right = true
        node.left = false
      end
  end

  def find(interger)
    @root.compact.each { |node|
    if node.data == interger
    puts "Node at index: |#{node.index}|\n---Value |#{node.data}|"
    end}
  end

# find levels order by ranges of power of two

  def level_range(level_goal)
    @lower = 0
    @upper = 0
    @current_level = 0
    while @current_level != level_goal
      @lower = @upper + 1
      @upper = @lower * 2
      @current_level += 1
    end
    @range = (@lower..@upper)
    @range
  end

  def level_order(level)
    @levelrange = level_range(level)
    @nodes_in_range = @root.slice(@levelrange)
    @nodes_array = []
    @nodes_in_range.compact.each { |node|
     @nodes_array.push("Node at index: |#{node.index}|\n---Value |#{node.data}|\n---Level |#{level}|")
    }
    puts @nodes_array
  end

  #prints out info for each node
  def info
    self.root.each {|element| if element != nil
       puts "
      Node value:#{element.data} at index:#{element.index}\n
      left - #{element.left}\n
      right - #{element.right}\n
      internode - #{element.internode}\n
      leafnode - #{element.leafnode}\n
      -------"
    end}
  end

  def preorder
    index = 0
    usedindex = []
    while index != self.root.length - 1
      if self.root[index] != nil
        puts self.root[index].info_display

      end
    end
  end

  def inorder(data)

  end

  def postorder(data)


  end
end



# read data and compare it to root
# if smaller go left if bigger go right
# is left
#
