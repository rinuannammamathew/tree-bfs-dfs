class Queue
  def initialize
    @queue = []
  end

  def enqueue(number)
    @queue.push(number)
  end

  def dequeue
    @queue.shift
  end

  def isEmpty?
    @queue.count == 0
  end

end


class Tree < Queue
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
    
  end

  def breadthFirstSearch(value)
    @queue = Queue.new()
    @queue.enqueue(self)

    while !@queue.isEmpty?
      n = @queue.dequeue
      puts n.payload 
      if value == n.payload
        return value
      end
      n.children.each do |child|
        @queue.enqueue(child)
      end
    end
    return nil
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

nameToFind = 10
foundName = trunk.breadthFirstSearch(nameToFind)
if foundName != nil
  # do something
end
puts foundName

