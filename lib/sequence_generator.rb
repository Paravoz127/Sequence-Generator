# frozen_string_literal: true

class SequenceGenerator
  def initialize
    @value = '1'
  end

  def get_item
    value = @value
    @value = get_next_value
    value
  end

  private

  def get_next_value
    values = @value.split('')
    res_value = ''
    current_elem = values.first
    k = 0
    values.each do |item|
      if item == current_elem
        k += 1
      else
        res_value += get_by_elem_and_count current_elem, k
        k = 1
        current_elem = item
      end
    end
    res_value + get_by_elem_and_count(current_elem, k)
  end

  def get_by_elem_and_count(elem, count)
    count.to_s + elem
  end
end
