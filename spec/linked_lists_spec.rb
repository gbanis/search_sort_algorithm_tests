require './lib/linked_lists.rb'

RSpec.describe MyList do

  before(:each) do
    @list = MyList.new
  end

  describe '#initialize' do
    it 'creates an empty list if first_value is not set' do
      expect(@list.head.value).to eq nil
    end

    it 'creates a list with a single element if first_value is set' do
      @list_with_initial_value = MyList.new(5)
      expect(@list_with_initial_value.head.value).to eq 5
    end
  end

  describe '#prepend' do
    it 'inserts a node at the beginning of the list' do
      @list.prepend(5)
      expect(@list.tail.value).to eq 5
      expect(@list.head.value).to eq 5

      @list.prepend(6)
      expect(@list.tail.value).to eq 5
      expect(@list.head.value).to eq 6
    end
  end

  describe '#append' do
    it 'inserts a node at the end of the list' do
      @list.append(5)
      expect(@list.tail.value).to eq 5
      expect(@list.head.value).to eq 5

      @list.append(6)
      expect(@list.tail.value).to eq 6
      expect(@list.head.value).to eq 5
    end
  end


  describe '#find_first_node' do
    it 'returns the @head node if we are searching for the value of @head' do
      @list.append(4)
      @list.append(5)
      @list.append(6)
      expect(@list.find_first_node(4).value).to eq 4
    end
    it 'returns the node after the first occurance of a node with the specified value' do
      @list.append(4)
      @list.append(5)
      @list.append(6)
      expect(@list.find_first_node(5).value).to eq 5
    end
    it 'returns nil if the value we are searching for does not exist in the list' do
      @list.append(4)
      @list.append(5)
      @list.append(6)
      expect(@list.find_first_node(10)).to eq nil
    end

  end

  describe '#insert_node_after_first' do
    it 'inserts a node after the first occurance of a node with a specified value' do
      @list.append(4)
      @list.append(5)
      @list.append(6)
      @list.insert_node_after_first(5, 7)
      expect(@list.find_first_node(5).next_node.value).to eq 7
      expect(@list.find_first_node(7).next_node.value).to eq 6
    end
    it 'returns nil if the value we search does not correspond to a value in the array' do
      @list.append(4)
      @list.append(5)
      @list.append(6)
      expect(@list.insert_node_after_first(10, 7)).to eq nil
    end
  end

end
