# Encoding: utf-8
require_relative '../lib/geller'


describe '#add_two_numbers' do
  it 'computes the addition of both numbers' do
    expect(add_two_numbers(5, 8)).to eq 13
  end
end

describe '#cryptostring' do
  it 'shuffles the string correctly' do
    input = 'Zenyatta'
    shuffled_input = cryptostring(input)
    expect(shuffled_input.length).to eq input.length
    expect(shuffled_input.swapcase.chars.sort).to eq input.chars.sort
    expect(shuffled_input).not_to eq input
  end
end

describe '#can_you_vote?' do
  it 'returns true for 19' do
    expect(can_you_vote?(19)).to eq true
  end

  it 'returns false for 15' do
    expect(can_you_vote?(15)).to eq false
  end
end

describe '#bio' do
  it 'should compute the right string' do
    expect(bio("Kenny Powers", 42, "Shelby")).to eq "Hello, my name is Kenny Powers. I'm 42 years old and I live in Shelby"
  end
end
