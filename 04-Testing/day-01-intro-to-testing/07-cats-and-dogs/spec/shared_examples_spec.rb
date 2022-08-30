# frozen_string_literal: true

# These tests are dependent on using the implicit 'subject' when they are
# included in another spec file. This file is not intended to be used alone.
# If you run rspec on this file, there will be 'no examples found' because
# there is not an implicit subject available.

RSpec.shared_examples 'base class method name' do
  # This test can be used in Cat and Dog because the method comes from the
  # base class.
  # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/respond-to-matcher
  context 'when method is from the base class' do
    it 'responds to meal_time' do
      expect(subject).to respond_to(:meal_time)
    end
  end
end

RSpec.shared_examples 'shared method name' do
  # This test can be used in Cat and Dog because the same method name is used
  # in both classes ('meow' or 'WOOF!').
  context 'when method name is the same in multiple classes' do
    it 'responds to talk' do
      expect(subject).to respond_to(:talk)
    end
  end
end
