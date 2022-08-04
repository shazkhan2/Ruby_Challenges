require 'rspec'
require_relative '../lib/shaken_not_stirred'

describe '#introduce_spy' do
  it "should generate the right introduction" do
    expect(introduce_spy("Munke", "SNAPS")).to eq("The name's SNAPS, Munke SNAPS.")
  end

  it "should capitalize the first name" do
    expect(introduce_spy("natasha", "ROMANOVA")).to eq("The name's ROMANOVA, Natasha ROMANOVA.")
  end

  it "should upcase the last name" do
    expect(introduce_spy("austin", "powers")).to eq("The name's POWERS, Austin POWERS.")
  end
end
