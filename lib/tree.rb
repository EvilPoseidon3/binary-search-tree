
require_relative "binary-search-tree"
require_relative "compairable"

class Tree 
  include Comparable
  attr_accessor :root

  def initialize(array)
    
    @root = build_tree(array)
  end

  def build_tree(array)
    @tree_array = Array.new(1)
    @node_array = build_node_array(array)
    sorting_adding(@node_array,@tree_array)
    @tree_array
  end

    #takes each node and and runs #left_right
    #then recursivele adds them to @tree array
  def sorting_adding(node_array,tree_array)
      node_array.each{ |node|
        left_right(node,tree_array)
        tree_array[node.index] = node
      }
  end

  # building node.class array from normal array
  def build_node_array(array) 
    @sorted_array = array
    @sorted_first = @sorted_array[0,(@sorted_array.length - 1)/2]
    @sorted_second = @sorted_array[(@sorted_array.length)/2, @sorted_array.length]
    @split_sort_array = @sorted_second + @sorted_first
    @split_node_array = node_array(@split_sort_array)
    @split_node_array
  end

  # turns elements in array into a node##########
  def node_array(array)
    @node_array = Array.new
    array.each { |i| @node_array << Node.new(i)}
    @node_array
  end

  # takes in a node and compares it to data
  # and sets its index number and sets left
  # or right to true
  def left_right(node, newArray, index=0)
      while newArray[index] != nil
        if newArray[index] == nil
          node.index = index
        else
          compare(newArray[index], node)
          if node.left == true
            index = index * 2 + 1
            node.index = node.index * 2 + 1
          end
          if node.right == true
            index = index * 2 + 1
            node.index = node.index * 2 + 1
          end
        end
      end
      puts node.index
  end
end