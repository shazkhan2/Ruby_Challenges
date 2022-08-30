## Equality
```ruby
# 'eq' checks for equal VALUE.
# 'eql' checks for equal VALUE and TYPE.
# 'equal' checks for OBJECT IDENTITY.
# 'be' checks for OBJECT IDENTITY.

RSpec.describe 'differences between eq, eql, equal, and be' do
  context 'my_score vs. your_score' do
    let(:my_score) { 10.0 }
    let(:your_score) { 10 }

    context 'eq only looks at value' do
      it 'is eq to each other' do
        expect(my_score).to eq(your_score)
      end
    end

    # my_score is a Float and your_score is an Integer.
    context 'eql looks at type & value' do
      it 'is not eql to each other' do
        expect(my_score).not_to eql(your_score)
      end
    end
  end

  context 'my_car vs. your_car vs. my_kids_borrow' do
    let(:my_car) { [2017, 'red', 'Jetta'] }
    let(:your_car) { [2017, 'red', 'Jetta'] }
    let(:my_kids_borrow) { my_car }

    context 'eql looks at type & value' do
      it 'is eql to each other' do
        expect(my_car).to eql(your_car)
      end

      it 'is eql to each other' do
        expect(my_kids_borrow).to eql(your_car)
      end
    end

    # Some prefer to use 'be' over 'equal' because it semantically makes sense.
    # expect(first_item).to be(second_item)
    context 'be and equal care about object identity' do
      it 'is comparing the same car' do
        expect(my_car).to equal(my_kids_borrow)
      end

      it 'is comparing the same car' do
        expect(my_car).to be(my_kids_borrow)
      end

      it 'is not comparing the same car' do
        expect(my_car).not_to be(your_car)
      end

      it 'is not comparing the same car' do
        expect(my_car).not_to equal([2017, 'red', 'Jetta'])
      end
    end
  end
end
```

## All / Contains
```ruby

# The 'all' matcher and the 'contain_exactly' matcher each look at every
# item in 'numbers'.

RSpec.describe Array do
  subject(:numbers) { [11, 17, 21] }

  it 'is all odd numbers' do
    expect(numbers).to all(be_odd)
  end

  it 'is all under 25' do
    expect(numbers).to all(be < 25)
  end

  it 'contains exactly 21, 11, 17' do
    # The order does not matter.
    expect(numbers).to contain_exactly(21, 11, 17)
  end
end

RSpec.describe String do
  subject(:sample_word) { 'spaceship' }

  context 'when using start_with' do
    it 'starts with s' do
      expect(sample_word).to start_with('s')
    end

    it 'starts with spa' do
      expect(sample_word).to start_with('spa')
    end

    it 'starts with space' do
      expect(sample_word).to start_with('space')
    end

    it 'starts with the whole word' do
      expect(sample_word).to start_with('spaceship')
    end
  end

  context 'when using end_with' do
    it 'ends with p' do
      expect(sample_word).to end_with('p')
    end

    it 'ends with hip' do
      expect(sample_word).to end_with('hip')
    end

    it 'ends with ship' do
      expect(sample_word).to end_with('ship')
    end

    it 'ends with the whole word' do
      expect(sample_word).to end_with('spaceship')
    end
  end
end

RSpec.describe Array do
  subject(:symbol_array) { %i[a b c d e] }

  it 'starts with a and ends with e' do
    expect(symbol_array).to start_with(:a).and end_with(:e)
  end

  it 'starts with a and includes c' do
    expect(symbol_array).to start_with(:a).and include(:c)
  end
end
```

## Change
```ruby
RSpec.describe Array do
  subject(:drinks) { %w[coffee tea water] }

  # Using .or instead of .and when compounding matchers:
  context 'when testing for multiple outcomes' do
    it 'will be coffee, tea, or water' do
      expect(drinks.sample).to eq('coffee').or eq('tea').or eq('water')
    end
  end

  # When testing for a change to occur, notice that unlike previous matchers
  # we've seen, 'change' accepts a block of code.
  # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/change-matcher

  context 'when testing for a change' do
    it 'will change the length to 4' do
      expect { drinks << 'juice' }.to change { drinks.length }.to(4)
    end

    it 'will change the length from 3 to 4' do
      expect { drinks << 'juice' }.to change { drinks.length }.from(3).to(4)
    end

    # The above two tests are too tightly coupled to a specific array length.
    # The test should instead be written for any length of array, for example:
    it 'will increase the length by one' do
      expect { drinks << 'juice' }.to change { drinks.length }.by(1)
    end

    # There are additional ways to be more descriptive about the change.
    it 'will increase the length by at most one' do
      expect { drinks << 'juice' }.to change { drinks.length }.by_at_most(1)
    end

    # Alternate form for 'change' matcher using (object, :attribute):
    it 'will increase the length by one' do
      expect { drinks << 'juice' }.to change(drinks, :length).by(1)
    end

    # You can compound change matchers together.
    it 'will decrease by one and end with tea' do
      expect { drinks.pop }.to change { drinks.length }.by(-1).and change { drinks.last }.to('tea')
    end
  end
end
```
