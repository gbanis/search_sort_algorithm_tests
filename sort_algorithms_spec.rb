require './sort_algorithms.rb'

RSpec.describe Array do
  before(:each) do
    unsorted_array = [25, 17, 235, 13, 62, 673, 1, 13, 42, 95]
    sorted_array = unsorted_array.sort

    @unsorted_array = Array.new(unsorted_array)
    @sorted_array = Array.new(sorted_array)
  end

  describe '#bubble_sort' do
    it 'sorts an unsorted array in ascending order' do
      expect(@unsorted_array.bubble_sort).to eq(@sorted_array)
    end
  end

  describe '#selection_sort' do
    it 'sorts an unsorted array in ascending order' do
      expect(@unsorted_array.selection_sort).to eq(@sorted_array)
    end
  end

  describe '#insertion_sort' do
    it 'sorts an unsorted array in ascending order' do
      expect(@unsorted_array.insertion_sort).to eq(@sorted_array)
    end
  end

  describe '#quick_sort' do
    it 'sorts an unsorted array in ascending order' do
      expect(@unsorted_array.quick_sort).to eq(@sorted_array)
    end
  end

end
