require 'rspec'
require_relative "../lib/mouth_size"

describe '#mouth_size' do
  it "opens up its mouth for a chicken" do
    expect(mouth_size("chicken")).to eq("wide")
  end

  it "closes its mouth for an alligator" do
    expect(mouth_size("alligator")).to eq("small")
  end

  it "doesn't even care about case" do
    expect(mouth_size("aLLigAtor")).to eq("small")
  end
end
