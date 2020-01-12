# frozen_string_literal: true

# This class generates next item of sequence by method #next_item
class SequenceGenerator
  def initialize
    @value = '1'
  end

  def next_item
    value = @value
    @value = next_value
    value
  end

  private

  def next_value
    values = @value.split('')
    res_value = ''
    current_elem = values.first
    k = 0
    values.each do |item|
      if item == current_elem
        k += 1
      else
        res_value += by_elem_and_count current_elem, k
        k = 1
        current_elem = item
      end
    end
    res_value + by_elem_and_count(current_elem, k)
  end

  def by_elem_and_count(elem, count)
    count.to_s + elem
  end
end
