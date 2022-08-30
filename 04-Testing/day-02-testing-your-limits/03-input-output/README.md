The file order to complete this lesson:
1. Familarize yourself with the two classes in lib/input_output.rb
2. Complete spec/input_output_spec.rb

Ruby code that was written before you learned how to use RSpec may be nearly
impossible to test. For example, in the lib/input_output file, there are
two identical games: ImpossibleToTestGame and NumberGame. Take a look at each
game and look for differences that may make one easier or harder to test
than the other.

One key difference between the two is that NumberGame has smaller,
isolated methods.

Small and isolated methods that only do one thing are easier to test.
Long methods are like a run-on sentence that should have been divided into 2 or 3 different sentences so that everything could be clearly understood and in this case if a method does many different things it can be difficult to test.

So if you are new to testing, be open to refactoring your previous
code, to make writing tests easier. As you learn testing, you will also
learn how to write better testable methods.

The tests in this file are longer than those in the previous lessons.
To get your bearings, remember to reference the following lines:
describe -> Name of the method that is being tested.
context ->  Explains the conditions of the test.
it ->       Explains the results of the test.


Read through the spec file and complete the six assignments!
