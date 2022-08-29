# The file order to complete this lesson:
1. Familarize yourself with the class in lib/magic_seven.rb
2. Complete spec/magic_seven_spec.rb

Before learning any more complexities of testing, let's take a look at a
standard testing pattern: [Arrange, Act, and Assert](https://youtu.be/sCthIEOaMI8)

1. Arrange -> set up the test (examples: initializing objects, let
              variables, updating values of instance variables).
2. Act ->     execute the logic to test (example: calling a method to run).
3. Assert ->  expect the results of arrange & act.

The tests in this lesson are fairly easy to understand, and it may seem
ridiculous to use A-A-A for them. However, tests should be easily understood
not just by you, but also by someone that is not familiar with the code.

NOTE: When you start using A-A-A to format your tests, it will feel
strange to not be following DRY (Don't Repeat Yourself). With tests, however,
repetition is necessary in order for them to be easy to read.

When you start working on an existing code base, you will often become familiar
with the code by reading the tests.
