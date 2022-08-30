## Background & Objectives

In the previous exercise, we were testing functions. Let's turn it up a notch and test some objects!

## Setup

In this exercise, we'll be finishing the specs for some classes. There are already partial specs written; your job is to look at how they are done, and complete the spec.

## Person
The first class is `Person`. The constructor takes a first and last name, and an age. You will need to finish the spec
by testing the #full_name, #initials, and #can_buy_beer? methods.

Additionally, it looks like whoever wrote this class doesn't like beer - fix that mistake by changing the #can_buy_beer?
method to check that the provided age is at least 16, then test it.

## Car
Next, test the car class. Here we're going to use some of the different styles allowed by rspec - the three tests all
are equivelent to one another, just different ways to write the same thing.

## Calculator
Finally, apply what you've learned to write a spec for the calculator class. Use both `expect(...).to eq(...)` and
`expect(...).not_to eq(...)` when testing.

## Go Further

Once all your tests are written and green, add some more tests (or extend the class with more methods, and test those!)

## Key Learning Points

- Learn to read a class and think of a an appropriate test suite for it
- Think about what is and isn't important to test. You shouldn't need to test the #initialize method (there shouldn't be
  any behavior in it), but the rest of the public API is fair game.
