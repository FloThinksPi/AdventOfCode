#!/usr/bin/env ruby
# frozen_string_literal: true

require './lib/value_counter'

puts ValueCounter.value(IO.readlines('data.txt'))
