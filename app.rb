# frozen_string_literal: true

require './lib/sequence_generator'

sg = SequenceGenerator.new

6.times do
  puts sg.get_item
end
