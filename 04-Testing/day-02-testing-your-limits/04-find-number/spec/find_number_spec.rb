# frozen_string_literal: true

require_relative '../lib/find_number'

RSpec.describe FindNumber do
  # ASSIGNMENT: METHOD #1

  # The basic idea of 'FindNumber' is to program a computer to guess a
  # random_number using binary search. Remember the binary search video
  # that you watched in the Computer Science section:
  # https://www.youtube.com/watch?v=T98PIp4omUA

  # The computer will update min and max values to help find the correct number.

  describe '#make_guess' do
    # Create a random_number double called 'number_guessing'. Allow the double
    # to receive 'value' and return the value of 8, in one of the two ways
    # explained above.

    subject(:game_guessing) { described_class.new(0, 9, number_guessing) }

    # Before you write the #make_guess method:
    # Write a test that would expect #make_guess to return the average of
    # the min and max values (rounded down). Don't expect this test to pass.
    # It will fail with an undefined method error because you haven't
    # written #make_guess yet!
    context 'when min is 0 and max is 9' do
      xit 'returns 4' do
      end
    end

    # Now write a method in find_number.rb called #make_guess that returns
    # the average of the min and max values (rounded down).
    # You can now run the above test and it should pass.

    # Write a test for each of the following contexts. You will need to create a
    # new instance of FindNumber for each context, but you can use the same
    # random number double created inside this method's describe block.

    context 'when min is 5 and max is 9' do
      xit 'returns 7' do
      end
    end

    context 'when min is 8 and max is 9' do
      xit 'returns 8' do
      end
    end

    context 'when min is 0 and max is 3' do
      xit 'returns 1' do
      end
    end

    context 'when min and max both equal 3' do
      xit 'returns 3' do
      end
    end
  end

  # ASSIGNMENT: METHOD #2
  describe '#game_over?' do
    context 'when guess and random_number are equal' do
      # Create another subject and random_number double with meaningful names.
      # The subject will need to specify the number value of @guess.

      # Allow the double to receive 'value' and return the same number as @guess.

      # Write a test that would expect game to be_game_over when a guess equals
      # the random_number double's value above. Remember that this test will not
      # be able to pass yet because you haven't written the method!

      xit 'is game over' do
      end
    end

    # Write the corresponding method in find_number.rb called #game_over?
    # that returns true when a guess equals the value of the random_number.

    # Write a test that would expect game to NOT be_game_over when a guess does
    # NOT equal the random_number double's value above.

    context 'when guess and random_number are not equal' do
      xit 'is not game over' do
      end
    end
  end

  # ASSIGNMENT: METHOD #3
  describe '#update_range' do
    # As you have seen above, you can share the same random_number double for
    # multiple context blocks, by declaring it inside the describe block.
    let(:number_range) { double('random_number', value: 8) }

    # Write four tests for #update_range that test the values of min and max.

    # When the guess is less than the answer:
    # - min updates to one more than the guess
    # - max stays the same

    # When the guess is more than the answer:
    # - min stays the same
    # - max updates to one less than the guess

    context 'when the guess is less than the answer' do
      subject(:low_guess_game) { described_class.new(0, 9, number_range, 4) }

      xit 'updates min to 5' do
      end

      xit 'does not update max' do
      end
    end

    context 'when the guess is more than the answer' do
      subject(:high_guess_game) { described_class.new(0, 9, number_range, 9) }

      xit 'does not update min' do
      end

      xit 'updates max to 8' do
      end
    end

    # Now, write the method in find_number.rb called #update_range that will
    # do the following:

    # When the guess is less than the answer:
    # - min updates to one more than the guess

    # When the guess is not less than the answer:
    # - max updates to one less than the guess

    # Write a test for any 'edge cases' that you can think of, for example:

    context 'when the guess is 7, min=5, and max=8' do
      xit 'updates min to the same value as max' do
      end

      xit 'does not update max' do
      end
    end
  end
end
