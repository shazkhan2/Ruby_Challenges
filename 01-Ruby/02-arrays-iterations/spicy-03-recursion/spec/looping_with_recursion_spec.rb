require_relative "../lib/looping_with_recursion"

class Range
  undef :sum
end

class Array
  undef :sum
end

describe "#sum_recursive" do

  it "should return the correct sum" do
    sum = sum_recursive(1, 100)
    expect(sum).to eq 5050
  end

  it "should return -1 if min > max" do
    sum = sum_recursive(101, 100)
    expect(sum).to eq -1
  end

end
