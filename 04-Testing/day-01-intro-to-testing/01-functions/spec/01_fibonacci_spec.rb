require "rspec"

def fibonacci(n)
  raise ArgumentError, "number has to be 0 or bigger" if n.negative?
  return n if n < 2

  fibonacci(n - 1) + fibonacci(n - 2)
end

RSpec.describe "fibonacci" do
  # FIX
  it "returns correct number for n = 1" do
    expect(fibonacci(1)).to eq 99
  end

  it "returns correct number for n = 2" do
    pending "TODO"
  end

  it "returns correct number for n = 10" do
    pending "TODO"
  end

  it "raises an error for negative n" do
    pending "TODO"
  end
end
