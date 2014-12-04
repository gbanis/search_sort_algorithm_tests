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

class MyList
  attr_accessor :head, :tail

  def initialize(first_value=nil)
    # initializes the linked list
    @head = first_value ? Node.new(first_value) : Node.new
    @tail = @head
  end

  def prepend(value)
    node = Node.new(value)

    @head.value == nil ? create_first_list_node(node) : add_node_before_head(node)
  end

  def append(value)
    node = Node.new(value)

    @head.value == nil ? create_first_list_node(node) : add_node_after_tail(node)
  end

  def find_first_node(value)
    current_node = @head
    loop do
      if current_node.value == value
        return current_node
      else
        if current_node.next_node
          current_node = current_node.next_node
        else
          return nil
        end
      end
    end
  end

  def insert_node_after_first(value_searched, new_value)
    return nil unless find_first_node(value_searched)

    new_node = Node.new(new_value)
    first_node = find_first_node(value_searched)
    if first_node == @tail
      add_node_after_tail(new_node)
    else
      new_node.next_node = first_node.next_node
      first_node.next_node = new_node
    end
  end

  private

  def create_first_list_node(node)
    @head = node
    @tail = @head
  end

  def add_node_before_head(node)
    node.next_node = @head
    @head = node
  end

  def add_node_after_tail(node)
    @tail.next_node = node
    @tail = node
  end

end
