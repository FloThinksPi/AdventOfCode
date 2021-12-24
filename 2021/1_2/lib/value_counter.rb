# frozen_string_literal: true

# ValueCounter calculates how many times a sliding window increases in a integer array
class ValueCounter
  def self.value(data)
    raise TypeError, 'All array elemet' unless data.is_a?(Array) && data.all? { |i| i.to_i.is_a?(Integer) }

    bigger_values = 0
    last_sum = Float::INFINITY
    data.each_cons(3).to_a.each do |window|
      sum = window.map(&:to_i).inject(0, :+)
      bigger_values += 1 if sum > last_sum
      last_sum = sum
    end
    bigger_values
  end
end
