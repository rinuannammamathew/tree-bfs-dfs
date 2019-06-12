class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def printTree()
    puts payload
    for child in children do
      puts child.printTree
    end
  end
end

thired_node = Tree.new(3, [])
seventeenth_node = Tree.new(17, [])
fourth_node   = Tree.new(4, [])
tenth_node = Tree.new(10,[])
ninth_node = Tree.new(9, [fourth_node, tenth_node])
sixth_node = Tree.new(6, [thired_node, seventeenth_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

trunk = Tree.new(2, [seventh_node, fifth_node])

puts trunk.printTree

