#!/usr/bin/env ruby
# frozen_string_literal: true

require './lib/value_counter'

filename = 'data.txt'
counter = ValueCounter.new
File.foreach(filename) do |line|
  counter.add_line(line)
end
puts counter.value
