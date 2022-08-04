require_relative "../lib/sum_it_up"

class Range; undef :sum; end

class Array; undef :sum; end

describe "#sum_it_up" do

  it "should return the correct sum starting from 1" do
    sum = sum_it_up(1, 100)
    expect(sum).to eq 5050
  end

  it "should return the correct sum from arbitratry numbers" do
    sum = sum_it_up(67, 202)
    expect(sum).to eq 18292
  end

  it "should return -1 if min number is higher than max number" do
    sum = sum_it_up(506, 10)
    expect(sum).to eq -1
  end
end
