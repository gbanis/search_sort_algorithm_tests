require './binary_search.rb'

RSpec.describe Array do
  before(:each) do
    odd_array = [11, 21, 39, 41, 57, 89, 102]
    even_array = [11, 21, 39, 41, 57, 89, 102, 175]
    @odd_array = Array.new(odd_array)
    @even_array = Array.new(even_array)
  end

  describe '#binary_search_wg' do
    describe '@odd_array' do
      it 'returns the correct index for the first number in array' do
        expect(@odd_array.binary_search_wg(11)).to be 0
      end

      it 'returns the correct index for the last number in array' do
        expect(@odd_array.binary_search_wg(102)).to be 6
      end

      it 'returns the correct index for an inner number in array in the first half of the array' do
        expect(@odd_array.binary_search_wg(21)).to be 1
      end

      it 'returns the correct index for an inner number in array in the first half of the array' do
        expect(@odd_array.binary_search_wg(89)).to be 5
      end

      it 'returns nil if the number is not in the array' do
        expect(@odd_array.binary_search_wg(32342)).to be nil
      end
    end

    describe '@even_array' do
      it 'returns the correct index for the first number in array' do
        expect(@even_array.binary_search_wg(11)).to be 0
      end

      it 'returns the correct index for the last number in array' do
        expect(@even_array.binary_search_wg(175)).to be 7
      end

      it 'returns the correct index for an inner number in array in the first half of the array' do
        expect(@even_array.binary_search_wg(21)).to be 1
      end

      it 'returns the correct index for an inner number in array in the first half of the array' do
        expect(@even_array.binary_search_wg(89)).to be 5
      end

      it 'returns nil if the number is not in the array' do
        expect(@even_array.binary_search_wg(32342)).to be nil
      end
    end
  end

end
