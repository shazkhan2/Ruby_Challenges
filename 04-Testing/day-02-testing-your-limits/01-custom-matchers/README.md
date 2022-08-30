## Objectives
Today, we're going to start off with another feature from RSpec - Custom Matchers! It doesn't come up a lot, but this is
a small preview of the power that RSpec offers.

If you need to test a condition that does not have a built-in matcher, you can create your own:
[Custom Matcher](https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/custom-matchers)

```ruby
RSpec.describe 'defining custom matchers' do
  context 'when reusing a matcher that is in scope' do
    matcher :be_divisible_by_four do
      match { |num| (num % 4).zero? }
    end

    it 'is divisible by 4' do
      expect(12).to be_divisible_by_four
    end

    # You can test for the inverse of the matcher.
    it 'is not divisible by 4' do
      expect(99).not_to be_divisible_by_four
    end

    # You can even use a custom matcher with 'all'.
    it 'works with multiple values' do
      expect([12, 100, 800]).to all(be_divisible_by_four)
    end
  end
end
```
