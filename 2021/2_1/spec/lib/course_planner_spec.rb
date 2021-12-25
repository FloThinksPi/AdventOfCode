#!/usr/bin/env ruby
# frozen_string_literal: true

require 'course_planner'

describe CoursePlanner do
  context 'using test data' do
    test_data = ['forward 5', 'down 5', 'forward 8', 'up 3', 'down 8', 'forward 2']
    it 'outputs the expected results' do
      test_data.each do |line|
        command, unit = line.split(' ')
        subject.navigate(command, unit)
      end
      expect(subject.horizontal).to eq(15)
      expect(subject.depth).to eq(10)
    end
  end
  it 'raises an error if NaN was used as unit' do
    expect { subject.navigate('forward', 'bommel') }.to raise_error(TypeError)
  end
  it 'raises an error if command is invalid' do
    expect { subject.navigate('bommel', '5') }.to raise_error('Invalid command, cannot navigate')
  end
end
