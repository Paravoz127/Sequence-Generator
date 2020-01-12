# frozen_string_literal: true

require './lib/sequence_generator'

sg = SequenceGenerator.new

6.times do
  puts sg.next_item
end
