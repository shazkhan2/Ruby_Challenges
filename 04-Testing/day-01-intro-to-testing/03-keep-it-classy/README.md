## String

```ruby
RSpec.describe String do
  # Let creates a helper method with a memoized value that is cached for the
  # same example but not across different examples. Let is lazy-evaluated;
  # it is not evaluated until the first time the method it defines is invoked.
  # https://medium.com/@tomkadwill/all-about-rspec-let-a3b642e08d39

  let(:favorite_color) { 'blue' }

  # Use a context block to make your tests clear and well organized.
  # It is not required, but it is generally used to explain any conditionals.
  # Here are some examples of words you should start your context block with:
  # if, when, unless, with, without, for, before, after, during

  context 'when a let variable is used' do
    it 'is the value of assigned let variable' do
      expect(favorite_color).to eq('blue')
    end
  end

  context 'when the let variable is overridden' do
    let(:favorite_color) { 'green' }

    it 'is the updated value of the let variable' do
      expect(favorite_color).to eq('green')
    end
  end

  # Let variables reset between examples.
  context 'when the overridden value is out of scope' do
    it 'is the value of original let variable' do
      expect(favorite_color).to eq('blue')
    end
  end
end
```

## Array
```ruby
RSpec.describe Array do
  # An implicitly defined 'subject' is available when the outermost example
  # group is a class. The 'subject' will be an instance of that class.
  # https://relishapp.com/rspec/rspec-core/v/2-11/docs/subject/implicitly-defined-subject

  # NOTE: Using an implicit subject is not recommended for most situations.
  # The next lesson will cover explicit subjects, which are recommended over
  # implicit subjects.

  context 'when subject is implicitly defined' do
    # Type matchers can use be_a or be_an to increase readability.
    # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/type-matchers
    it 'is an Array' do
      expect(subject).to be_an(Array)
    end

    # Below is one-line syntax that does the same as the above test.
    # Look at the doc string that is auto-generated when this test is run
    # (in a terminal window).
    it { is_expected.to be_an(Array) }
  end

  context 'when using predicate matchers' do
    context 'when using the empty? predicate method' do
      # A predicate method in Ruby ends with a ? and only returns true or false.
      it 'returns true' do
        expect(subject.empty?).to eq true
      end
    end

    # RSpec can leverage this to create predicate matchers for any predicate method.
    # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/predicate-matchers
    it 'is empty' do
      expect(subject).to be_empty
    end

    # Below is one-line syntax that does the same as the above test.
    # Look at the doc string that is auto-generated when this test is run
    # (in a terminal window).
    it { is_expected.to be_empty }
  end

  context 'when a let variable is declared inside a context block' do
    let(:numbers) { [3, 8, 9] }

    it 'has length of 3' do
      expect(numbers.length).to eq(3)
    end

    it 'changes the length to 2' do
      numbers.pop
      expect(numbers.length).to eq(2)
    end
  end

  # Look at the order of the above 5 tests when this test file is run
  # (in a terminal).
  # Why do you think they output in a different order than they are written?

  # The answer is that each group runs its examples before running its nested
  # example groups, even if the nested groups are defined before the examples.
  # https://relishapp.com/rspec/rspec-core/v/3-9/docs/command-line/order

  # Please note: one-line tests are only recommended when the matcher aligns
  # exactly with the doc string. Even in that case, many rubyists prefer
  # explicitly writing out the test & not using one-line syntax.
end
```

## Number
```ruby
class SingleDigit
  attr_reader :number

  def initialize
    @number = rand(1..9)
  end
end

RSpec.describe SingleDigit do
  # There are differences between let and subject that you can research.
  # In general, the subject is used to declare the test subject.
  # https://stackoverflow.com/questions/38437162/whats-the-difference-between-rspecs-subject-and-let-when-should-they-be-used

  # It is recommended to explicitly define the subject with a descriptive name.
  # Then use the descriptive name, instead of 'subject,' in the tests.
  # https://relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
  subject(:random_digit) { SingleDigit.new }

  # There can be multiple tests in one example block; however, it is recommended
  # to test only one thing at a time.
  it 'is greater than or equal to 1' do
    # Comparison matchers are used with 'be' matcher
    # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/comparison-matchers
    expect(random_digit.number).to be >= 1
  end

  it 'is less than 10' do
    expect(random_digit.number).to be < 10
  end

  # The above 2 tests can be compounded together, so that you test two things.
  # in one test at the same time.
  context 'when tests can be compounded' do
    it 'is greater than 0 and less than 10' do
      # side note: rspec runs, but rubocop does not like (be >= 1).and be < 10
      expect(random_digit.number).to be_positive.and be < 10
    end
  end

  # Instead of using .to, you can use the inverse built in matcher .not_to
  context 'when using not_to' do
    it 'is not equal to 10' do
      expect(random_digit.number).not_to eq(10)
    end

    it 'is not equal to 0' do
      expect(random_digit.number).not_to be_zero
    end

    it 'is not nil' do
      expect(random_digit.number).not_to be_nil
    end
  end
end
```

## Hash
```ruby
RSpec.describe Hash do
  subject(:favorites) { { color: 'blue', food: 'fajitas' } }

  # As you discovered in the last assignment, the include matcher works on any
  # object that would respond to the #include? method.
  # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/include-matcher
  context 'when changing favorite color to forest green' do
    it 'includes green' do
      favorites[:color] = 'forest green'
      expect(favorites[:color]).to include('green')
    end
  end

  context 'when a favorite movie is not in the hash' do
    it 'is nil' do
      expect(favorites[:movie]).to be_nil
    end
  end

  # Use the 'be' matcher when testing for true or false values.
  context 'when testing for true or false values' do
    subject(:car_features) do
      {
        remote_start?: true,
        parking_camera?: true,
        assisted_steering?: false
      }
    end

    it 'has remote start' do
      expect(car_features[:remote_start?]).to be true
    end

    it 'does not have assisted steering' do
      expect(car_features[:assisted_steering?]).to be false
    end
  end
end
```
