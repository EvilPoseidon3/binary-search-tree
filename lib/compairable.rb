
module Comparable
  
  def compare(root, node = nil)
    if node >= root 
      node.left = true
      node.right = false
    else
      node.right = true
      node.left = false
    end
  end


end



# read data and compare it to root
# if smaller go left if bigger go right
# is left 
# 