# frozen_string_literal: true

require_relative '../lib/drink'

RSpec.describe Drink do
  describe '#initialize' do
    context 'when type is specified and ounces is default' do
      # Create an explicit subject, using 'described_class' and your choice of
      # beverage type.

      # remove the 'x' before running this test
      xit 'is your choice of beverage' do
      end

      # remove the 'x' before running this test
      xit 'has 16 ounces' do
      end
    end
  end

  describe '#full?' do
    context 'when drink has 16 ounces or more' do
      # Create an explicit subject, using 'described_class' and your choice of
      # beverage type.

      # remove the 'x' before running this test
      xit 'is full' do
      end
    end

    context 'when drink has less than 16 ounces' do
      # Create an explicit subject, using 'described_class' and your choice of
      # beverage type. In addition, specify ounces to be any number under 16.

      # remove the 'x' before running this test
      xit 'is not full' do
      end
    end
  end
end
