#!/usr/bin/env ruby
# frozen_string_literal: true

require './lib/course_planner'

planer = CoursePlanner.new
File.foreach('data.txt') do |line|
  command, unit = line.split(' ')
  planer.navigate(command, unit)
end
puts planer.horizontal * planer.depth
