require 'pry'

class Array
  # For I = 1 to N - 1
  #   For J = 1 to N - 1
  #     If (A(J) > A(J + 1)
  #       Temp = A(J)
  #       A(J) = A(J + 1)
  #       A(J + 1) = Temp
  #     End-If
  #   End-For
  # End-For

  def bubble_sort
    array = self
    return array if array.length <= 1

    (0..array.length-2).each do |i|
      (0..array.length-2).each do |j|
        if array[j] > array[j+1]
          temp = array[j]
          array[j] = array[j+1]
          array[j+1] = temp
        end
      end
    end
    array
  end

  # For I = 1 to N-1 do:
  #   Smallsub = I
  #   For J = I + 1 to N-1 do:
  #     If A(J) < A(Smallsub)
  #       Smallsub = J
  #     End-If
  #   End-For
  #   Temp = A(I)
  #   A(I) = A(Smallsub)
  #   A(Smallsub) = Temp
  # End-For
  def selection_sort
    array = self
    return array if array.length <= 1

    (0..array.length-1).each do |i|
      smallsub = i
      (i+1..array.length-1).each do |j|
        if array[j] < array[smallsub]
          smallsub = j
        end
      end
      temp = array[i]
      array[i] = array[smallsub]
      array[smallsub] = temp
    end
    array
  end

  # For I = 2 to N
  #   J = I
  #   Do while (J > 1) and (A(J) < A(J - 1)
  #     Temp = A(J)
  #     A(J) = A(J - 1)
  #     A(J - 1) = Temp
  #     J = J - 1
  #   End-Do
  # End-For
  def insertion_sort
    array = self
    return array if array.length <= 1

    (1...array.length).each do |i|
      j = i
      loop do
        break if j <= 0 || array[j] > array[j-1]
        temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
        j = j - 1
      end
    end
    array
  end

  # 1. Pick an element, called a pivot, from the array.
  # 2. Reorder the array so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it (equal values can go either way). After this partitioning, the pivot is in its final position. This is called the partition operation.
  # 3. Recursively apply the above steps to the sub-array of elements with smaller values and separately to the sub-array of elements with greater values.

  def quick_sort
    return self if self.length <= 1

    array = self
    pivot_index = (array.length/2).to_i
    pivot = array[pivot_index]
    left_array = []
    right_array = []

    (0...pivot_index).each do |i|
      left_array << array[i] if array[i] <= pivot
      right_array << array[i] if array[i] > pivot
    end
    (pivot_index+1...array.length).each do |i|
      left_array << array[i] if array[i] <= pivot
      right_array << array[i] if array[i] > pivot
    end

    left_array = left_array.quick_sort if left_array.length > 1
    right_array = right_array.quick_sort if right_array.length > 1

    left_array + [pivot] + right_array

  end

  def merge_sort

  end
end


# [1,7,3,9,1,2,6].quick_sort
