class MyQueue
  attr_reader :q

  # make a new empty cueue
  # add item to the back of queue
  # look at item at front of queue
  # retrieve and remove item from front of queue
  # ask the size of the queue
  # ask if its empty

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
