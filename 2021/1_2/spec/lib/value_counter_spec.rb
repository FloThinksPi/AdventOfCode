#!/usr/bin/env ruby
# frozen_string_literal: true

require 'value_counter'

describe ValueCounter do
  context 'using test data' do
    test_data = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    it 'outputs the expected results' do
      expect(ValueCounter.value(test_data)).to eq(5)
    end
  end
  it 'raises an error if NaN was added' do
    expect { ValueCounter.value('bommel') }.to raise_error(TypeError)
  end
end
