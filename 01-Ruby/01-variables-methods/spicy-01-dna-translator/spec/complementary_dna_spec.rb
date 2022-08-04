# Encoding: utf-8
require_relative '../lib/complementary_dna'

describe '#complementary_dna' do

  valid = "GATCGATAGATCGCTATGC"
  mix_case = "GAtcgatGCtagatagcTATAGATaTTT"
  invalid = "ATG19CATAGXATDD"

  it 'returns a String' do
    expect(complementary_dna(valid)).to be_a String
  end

  it 'computes a valid DNA string correctly' do
    expect(complementary_dna(valid)).to eq "CTAGCTATCTAGCGATACG"
  end

  it 'is case insensitive' do
    expect(complementary_dna(mix_case)).to eq "CTAGCTACGATCTATCGATATCTATAAA"
  end

  it 'detects invalid DNA strings' do
    expect(complementary_dna(invalid)).to eq "invalid dna strand detected"
  end
end
