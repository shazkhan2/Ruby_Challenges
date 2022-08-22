require "rspec"

def fibonacci(n)
  return n if n < 2

  fibonacci(n - 1) + fibonacci(n - 2)
end

RSpec.describe "fibonacci" do
  # FIX
  it "returns correct number in first place" do
    expect(fibonacci(1)).to eq 99
  end

  it "returns correct number in second place" do
    # TODO
  end

  it "returns correct number in tenth place" do
    # TODO
  end
end
