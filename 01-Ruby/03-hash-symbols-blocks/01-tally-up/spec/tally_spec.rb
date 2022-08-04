require_relative "../lib/tally"

class Array; undef :tally; end

describe "#tally_list" do
  subject { tally_list(array) }
  
  context "with empty array" do 
    let(:array) { [] }

    it "returns an empty hash" do
      expect(subject).to eq({})
    end
  end

  context "with array of strings" do 
    let(:array) { %w(cat dog cow cow dog cow horse) }
    expected = { "cat" => 1, "cow" => 3, "dog" => 2, "horse" => 1 }

    it "returns the correct hash" do
      expect(subject).to eq(expected)
    end
  end

  context "with array of integers" do 
    let(:array) { [1, 2, 3, 3, 2, 2, 2, 1, 3, 3, 1, 2] }
    expected = { 1 => 3, 2 => 5, 3 => 4 }

    it "returns the correct hash" do
      expect(subject).to eq(expected)
    end
  end
end
