The file order to complete this lesson:
1. Familarize yourself with the initialize method in lib/find_number.rb
2. Start reading spec/find_number_spec.rb, which will also include
   instructions to add methods to lib/find_number.rb

This file focuses on test-driven development (TDD). One important
TDD technique is using a 'double' for any object outside of the class being
tested. A 'double' is a generic ruby object that stands in for the real
object, like a stunt double.

Doubles are very useful in TDD because you can create test functionality that
is not coded yet with them.

In this lesson, we will be testing the class 'FindNumber'. Look at the
lib/find_number.rb file. An instance of 'FindNumber' is initialized with
min, max, answer and guess. There are default values for answer and guess.

NOTE: the 'RandomNumber' class has not been written. During TDD, we will need
to create a double for RandomNumber in the tests for FindNumber.
https://relishapp.com/rspec/rspec-mocks/v/3-9/docs/basics/test-doubles

Learning about doubles can be very confusing, because many resources use
doubles/mocks/stubs interchangeably. If you want to dig a little deeper,
here are a few additional resources to check out:
https://www.tutorialspoint.com/rspec/rspec_test_doubles.htm
https://www.codewithjason.com/rspec-mocks-stubs-plain-english/

```ruby
RSpec.describe FindNumber do
  # There are two ways to specify the messages that a double can receive.

  describe '#initialize' do
    # Doubles are strict, which means you must specify (allow) any messages
    # that they can receive. If a double receives a message that has not been
    # allowed, it will trigger an error.

    # This first example creates the double, then allows specific methods.
    context 'when creating the double and allowing method(s) in two steps' do
      let(:random_number) { double('random_number') }
      subject(:game) { described_class.new(0, 9, random_number) }

      context 'when random_number is 8' do
        it 'returns 8' do
          allow(random_number).to receive(:value).and_return(8)
          solution = game.answer
          expect(solution).to eq(8)
        end
      end
    end

    # This second example creates the double & specific methods together.
    context 'when creating the double and allowing method(s) in one step' do
      # A hash can be used to define allowed messages and return values.
      # When passing a hash as the last argument, the { } are not required.
      # let(:random_number) { double('random_number', { value: 3 }) }
      let(:random_number) { double('random_number', value: 3) }
      subject(:game) { described_class.new(0, 9, random_number) }

      context 'when random_number is 3' do
        it 'returns 3' do
          solution = game.answer
          expect(solution).to eq(3)
        end
      end
    end

    # When testing the same method in multiple tests, it is possible to add
    # method names to subject.
    context 'when adding method names to subject for multiple tests' do
      let(:random_number) { double('random_number', value: 5) }
      subject(:game_solution) { described_class.new(0, 9, random_number).answer }

      context 'when random_number is 5' do
        it 'returns 5' do
          expect(game_solution).to eq(5)
        end
      end
    end
  end
end
```

## TDD
For this lesson you will be doing TDD for 3 methods: #make_guess, #game_over?, and #update_range.

After you have some experience using TDD, you can use the typical
Red-Green-Refactor workflow.
https://thoughtbot.com/upcase/videos/red-green-refactor-by-example

Since this is probably your first experience with TDD, let's extend the
workflow to include a few more steps:
1. Read & understand the requirement for one method only.
2. Write one test for that method; run the tests to see it fail.
3. Write the method to fulfill the requirement.
4. Run the tests again. If they don't all pass, redo steps 1-3.
5. When your first test is passing, write the additional tests.
6. Run all of the tests. If any do not pass, redo steps 3-5.
7. Optional: Refactor your code and/or tests, keeping all tests passing.
