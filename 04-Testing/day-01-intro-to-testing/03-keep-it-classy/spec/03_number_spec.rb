# frozen_string_literal: true

# In a typical workflow, the class being tested will be located in a separate
# file from the tests. But for this simple example, let's keep everything together.
class SingleDigit
  attr_reader :number

  def initialize
    @number = rand(1..9)
  end
end

RSpec.describe Array do
  context 'when my_array has perfect values' do
    # Write a let variable 'my_array' that passes all tests.

    # remove the 'x' before running this test
    xit 'has a specific first value' do
      expect(my_array.first).to be_odd.and be <= -1
    end

    # remove the 'x' before running this test
    xit 'has a specific last value' do
      expect(my_array.last).to be_even.and be < 99
    end

    # remove the 'x' before running this test
    xit 'has a specific min value' do
      expect(my_array.min).not_to be < -9
    end

    # remove the 'x' before running this test
    xit 'has a specific max value' do
      expect(my_array.max).to be > 100
    end

    # remove the 'x' before running this test
    xit 'includes a value of 42' do
      expect(my_array).to include(42)
    end

    # remove the 'x' before running this test
    xit 'has a fourth element' do
      expect(my_array[3]).not_to be_nil
    end
  end
end
