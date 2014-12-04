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

end
