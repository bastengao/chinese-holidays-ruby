require 'spec_helper'

describe Chinese::Holidays::Days do
  it 'days' do
    days = Chinese::Holidays::Days.new('test', ['2016.01.01'], 'holiday')
    expect(days.days.size).to eq 1

    days = Chinese::Holidays::Days.new('test', ['2016.01.01', '2016.01.03'], 'holiday')
    expect(days.days.size).to eq 3
  end

  it 'holiday?' do
    days = Chinese::Holidays::Days.new('test', ['2016.01.01'], 'holiday')
    expect(days.holiday?).to eq true
    expect(days.workingday?).to eq false
  end

  it 'workingday?' do
    days = Chinese::Holidays::Days.new('test', ['2016.01.01'], 'workingday')
    expect(days.workingday?).to eq true
    expect(days.holiday?).to eq false
  end

end
