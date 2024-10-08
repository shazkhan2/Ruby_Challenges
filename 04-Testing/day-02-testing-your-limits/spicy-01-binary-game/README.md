The file order to complete this lesson:

1. Familarize yourself with the four lib/ files.
   - lib/binary_main
   - lib/binary_game
   - lib/binary_search (which is based on find_number)
   - lib/random_number
2. Read the comments in spec/binary_search_spec
3. Complete spec/binary_game_spec

As noted above, the files for this lesson build on the TDD files
from 'find number'. The FindNumber class is now called BinarySearch, which is a more
accurate description.

This lesson has a new class called BinaryGame. This BinaryGame class uses
the BinarySearch class and visualizes how a binary search works.

The focus of this lesson is unit testing, which is testing the behavior of
individual methods in isolation. However, every method does not need to be
tested, so we will look at some basic guidelines that determine whether or not
a method needs to be tested.
https://www.artofunittesting.com/definition-of-a-unit-test

In general, you probably have 4 different types of methods:
1. Command - Changes the observable state, but does not return a value.
2. Query - Returns a result, but does not change the observable state.
3. Script - Only calls other methods, usually without returning anything.
4. Looping Script - Only calls other methods, usually without returning
   anything, and stops when certain conditions are met.

Let's take a look at methods that should always be tested:

1. Public Command or Public Query Methods should always be tested, because
they are the public interface. Command Methods should test the method's action
or side effect. Query Methods should test the method's return value.

2. Command or Query Methods that are inside a public script or looping script
method should be tested. For the games that we are making, script and looping
script methods are just a convenient way to call the methods needed to play a
full game. Since these methods are required to play the game, they should be
publicly tested methods (even if you previously made them private). Pretend
that someone will be using your class to make their own game with customized
text. Any method that they would need in their game should be a publicly
tested method.

3. Any method that sends a command message to another class should always test
that those messages were sent.

4. A Looping Script Method should test the behavior of the method. For
example, that it stops when certain conditions are met.

Here is a summary of what should be tested
1. Command Method -> Test the change in the observable state
2. Query Method -> Test the return value
3. Method with Outgoing Command -> Test that a message is sent
4. Looping Script Method -> Test the behavior of the method

There are a handful of methods that you do not need to test:

1. You do not have to test #initialize if it is only creating instance
variables. However, if you call methods inside the initialize method, you
might need to test #initialize and/or the inside methods. In addition, you
will need to stub any inside methods because they will be called when you
create an instance of the class.

2. You do not have to test methods that only contain 'puts' or 'gets'
because they are well-tested in the standard Ruby library.

3. Private methods do not need to be tested because they should have test
coverage in public methods. However, as previously discussed, you may have
some private methods that are called inside a script or looping script method;
these methods should be tested publicly.

# Demo
You can run `ruby lib/binary_main.rb` to play the game yourself
