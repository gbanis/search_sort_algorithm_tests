class MyQueue
  attr_reader :q

  def initialize
    @q = []
  end

  def add_item(item)
    @q << item
  end

  def look
    @q[0]
  end

  def retrieve
    @q.slice!(0)
  end

  def size
    @q.length
  end

  def empty?
    @q.length == 0
  end

end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

# Queue implementation with nodes

class MyQueue2
  attr_accessor :head

  def initialize(first_value=nil)
    # initializes the linked list
    @head = Node.new(first_value) if first_value
  end

  def push(value)
    # pushes a node at the end of the queue
    node = Node.new(value)
    if @head
      @head.next_node = node
    else
      @head = node
    end
  end

  def shift
    # pulls a node from the beginning of the queue
    node = @head
    @head = node.next_node
    node
  end

  def peek
    @head.value
  end

end
