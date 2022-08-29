require "rspec"

def fizz_buzz
  (0..99).map do |n|
    if (n % 3).zero? && (n % 5).zero?
      "FizzBuzz"
    elsif (n % 3).zero?
      "Fizz"
    elsif (n % 5).zero?
      "Buzz"
    else
      n
    end
  end
end

RSpec.describe "fizz_buzz" do
  it "should contain 100 elements" do
    expect(fizz_buzz.size).to eq 100
  end

  it "should start with 'FizzBuzz'" do
    expect(fizz_buzz.first).to eq "FizzBuzz"
  end

  it "should have the number 1 at index 1" do
    # TODO
  end

  it "should have 'Fizz' at index 3" do
    # TODO
  end

  it "should have 'Buzz' at index 5" do
    # TODO
  end

  it "should have 'FizzBuzz' at index 15" do
    # TODO
  end
end
