require 'spec_helper'

describe Chinese::Holidays do
  it 'has a version number' do
    expect(Chinese::Holidays::VERSION).not_to be nil
  end

  it 'is_holiday?' do
    expect(Chinese::Holidays.is_holiday?(Date.new(2016, 1, 5))).to eq(false)
    expect(Chinese::Holidays.is_holiday?(Date.new(2016, 1, 1))).to eq(true)
  end

  it 'is_workingday?' do
    expect(Chinese::Holidays.is_workingday?(Date.new(2016, 1, 5))).to eq(true)
    expect(Chinese::Holidays.is_workingday?(Date.new(2016, 1, 1))).to eq(false)
  end

  it 'all' do
    expect(Chinese::Holidays.all).not_to be_nil
  end

  it 'load_holidays' do
    expect(Chinese::Holidays.load_holidays).not_to be_nil
  end
end
