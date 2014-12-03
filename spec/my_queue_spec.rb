require './lib/my_queue.rb'

RSpec.describe MyQueue do

  before(:each) do
    @q = MyQueue.new
  end

  describe '#initialize' do
    it 'creates an empty queue' do
      expect(@q.q).to eq []
    end
  end

  describe '#add_item' do
    it 'adds a single item to an empty queue' do
      @q.add_item(5)
      expect(@q.q).to eq [5]
    end

    it 'when called twice, adds two items in the correct order' do
      @q.add_item(4)
      @q.add_item(7)
      expect(@q.q).to eq [4,7]
    end
  end

  describe '#look' do
    it 'returns the item at the top of the queue' do
      @q.add_item(4)
      @q.add_item(7)
      expect(@q.look).to eq 4
    end
  end

  describe '#retrieve' do
    it 'returns the item at the top of the queue and removes it from the queue' do
      @q.add_item(4)
      @q.add_item(7)
      @q.add_item(8)
      expect(@q.retrieve).to eq 4
      expect(@q.q).to eq [7,8]
    end
  end

  describe '#size' do
    it 'returns the size of the queue' do
      @q.add_item(4)
      @q.add_item(7)
      expect(@q.size).to eq 2
    end
  end

  describe '#empty?' do
    it 'returns true if queue is empty' do
      @empty_queue = MyQueue.new
      expect(@empty_queue.empty?).to eq true
    end

    it 'returns false if queue is not empty' do
      @q.add_item(4)
      @q.add_item(7)
      expect(@q.empty?).to eq false
    end
  end

end

RSpec.describe MyQueue2 do

  before(:each) do
    @qq = MyQueue2.new
    @qq2 = MyQueue2.new(5)
  end

  describe '#initialize' do
    it 'creates an empty queue' do
      expect(@qq.class).to eq MyQueue2
    end

    it 'creates a queue with a first item if one is present' do
      expect(@qq2.class).to eq MyQueue2
      expect(@qq2.head.class).to eq Node
      expect(@qq2.head.value).to eq 5
    end

  end

  describe '#push' do
    it 'adds a single item to an empty queue' do
      @qq.push(5)
      expect(@qq.head.value).to eq 5
    end

    it 'when called twice, adds two items in the correct order' do
      @qq.push(4)
      @qq.push(7)
      expect(@qq.head.value).to eq 4
    end
  end

  describe '#peek' do
    it 'returns the item at the top of the queue' do
      @qq.push(4)
      @qq.push(7)
      expect(@qq.peek).to eq 4
    end
  end

  describe '#shift' do
    it 'returns the item at the top of the queue and removes it from the queue' do
      @qq.push(4)
      @qq.push(7)
      @qq.push(8)
      expect(@qq.shift.value).to eq 4
    end
  end

end
