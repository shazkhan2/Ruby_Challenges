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
