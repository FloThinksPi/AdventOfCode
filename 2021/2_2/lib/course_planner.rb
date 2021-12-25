# frozen_string_literal: true

# CoursePlanner
class CoursePlanner
  def initialize
    @horizontal = 0
    @depth = 0
    @aim = 0
  end

  def navigate(command, unit) # rubocop:disable Metrics/MethodLength
    raise TypeError, 'Unit must be a number' unless unit.respond_to?(:to_i) && unit.to_s == unit.to_i.to_s

    case command
    when 'forward'
      @horizontal += unit.to_i
      @depth += @aim * unit.to_i
    when 'up'
      @aim -= unit.to_i
    when 'down'
      @aim += unit.to_i
    else
      raise 'Invalid command, cannot navigate'
    end
  end

  attr_reader :horizontal, :depth
end
