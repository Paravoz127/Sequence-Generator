# frozen_string_literal: true

require 'spec_helper'
require 'sequence_generator'

describe 'I want to ' do
  it 'generate first item' do
    sg = SequenceGenerator.new
    expect(sg.next_item).to eq '1'
  end

  it 'generate second item' do
    sg = SequenceGenerator.new
    sg.next_item
    expect(sg.next_item).to eq '11'
  end

  it 'generate third item' do
    sg = SequenceGenerator.new
    2.times do
      sg.next_item
    end
    expect(sg.next_item).to eq '21'
  end

  it 'generate fourth item' do
    sg = SequenceGenerator.new
    3.times do
      sg.next_item
    end
    expect(sg.next_item).to eq '1211'
  end

  it 'generate fifth item' do
    sg = SequenceGenerator.new
    4.times do
      sg.next_item
    end
    expect(sg.next_item).to eq '111221'
  end

  it 'generate sixth item' do
    sg = SequenceGenerator.new
    5.times do
      sg.next_item
    end
    expect(sg.next_item).to eq '312211'
  end
end
