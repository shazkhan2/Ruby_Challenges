# frozen_string_literal: true

RSpec.describe Array do
  context 'when updating an implicit subject' do
    # remove the 'x' before running this test
    xit 'is empty' do
      # Write a test to expect the subject to be empty.
    end

    # remove the 'x' before running this test
    xit 'updates length to 1' do
      # Update the implicit subject to make this test pass.
      expect(subject.length).to eq(1)
    end
  end

  context 'when using one let variable on two tests' do
    # Make a let variable that will pass both tests.

    # remove the 'x' before running this test
    xit 'has length of 3' do
      expect(lucky_numbers.length).to eq(3)
    end

    # remove the 'x' before running this test
    xit 'has sum of 42' do
      expect(lucky_numbers.sum).to eq(42)
    end
  end
end
