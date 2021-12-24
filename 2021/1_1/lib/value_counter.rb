# frozen_string_literal: true

# ValueCounter accepts new values and increments just if the currently inserted value is larger than the new one.
class ValueCounter
  def initialize
    @bigger_values = 0
    @last_line = Float::INFINITY
  end

  def add_line(line)
    raise TypeError, 'A line must be a number' unless line.respond_to?(:to_i) && line.to_s == line.to_i.to_s

    @bigger_values += 1 if line.to_i > @last_line
    @last_line = line.to_i
  end

  def value
    @bigger_values
  end
end
