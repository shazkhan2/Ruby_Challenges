require_relative '../lib/happy_number'


describe '#happy_number' do
  it 'returns true for happy numbers' do
    expect(happy_number?(1)).to eq true
    expect(happy_number?(81)).to eq true
    expect(happy_number?(1458)).to eq true
    expect(happy_number?(1729)).to eq true
  end

  it 'returns false for sad numbers' do
    expect(happy_number?(2987)).to eq false
    expect(happy_number?(109862)).to eq false
    expect(happy_number?(167)).to eq false
  end
end
