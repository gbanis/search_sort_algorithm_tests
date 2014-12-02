require 'pry'

class Array
  def binary_search_wg(search_number)
    sampling_array = self
    middle_index = (sampling_array.length/2).to_i
    current_index = middle_index

    loop do
      middle_number = sampling_array[middle_index]

      if middle_index == 0 && middle_number != search_number
        return nil
      end

      if middle_number == search_number
        return current_index
      elsif search_number > middle_number
        sampling_array = sampling_array[middle_index+1..-1]
        middle_index = (sampling_array.length/2).to_i
        current_index += middle_index + 1
      elsif search_number < middle_number
        sampling_array = sampling_array[0..middle_index-1]
        middle_index = (sampling_array.length/2).to_i
        current_index = current_index - sampling_array.length + middle_index
      end

    end
  end

  # def binary_search_wg(search_number)
  #   sampling_array = self

  #   loop do
  #     middle_index = (sampling_array.length/2).to_i
  #     middle_number = sampling_array[middle_index]

  #     if middle_index == 0 && middle_number != search_number
  #       return nil
  #     end

  #     if middle_number == search_number
  #       return self.index(middle_number)
  #     elsif search_number > middle_number
  #       sampling_array = sampling_array[middle_index+1..-1]
  #     else
  #       sampling_array = sampling_array[0..middle_index-1]
  #     end

  #   end
  # end


  def linnear_search_wg(search_number)
    i = 0
    self.each do
      if self[i] == search_number
        return i
      else
        i += 1
      end
    end
    nil
  end
end



array = [11, 21, 39, 41, 57, 89, 102, 180]
puts array.binary_search_wg(89)
# puts array.linnear_search_wg(41)
