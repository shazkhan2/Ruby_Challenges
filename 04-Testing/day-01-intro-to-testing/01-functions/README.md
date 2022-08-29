## Background & Objectives

In this exercise, we'll be finishing the specs for some methods. There are already partial specs written; your job is to look at how they are done, and complete the spec.

We will be writing tests for 2 methods.

## Setup

In this exercise, we'll be finishing the specs for some methods. There are already partial specs written; your job is to look at how they are done, and complete the spec. 

The first method is designed to calculate a fibonacci number. A [**Fibonacci Number**](https://en.wikipedia.org/wiki/Fibonacci_number) is a number derived from a sequence that starts with `[0, 1]` and proceeds endlessly by summing the last two numbers of the sequence to add the next. Like so:

```ruby
  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55] # and so on and so on
```

In our method, we don't care about the sequence, just to get fibonacci number from its index in the sequence. Here are a few examples:

```ruby
  fibonacci(0) # => 0
  fibonacci(3) # => 2
  fibonacci(6) # => 8
```

The other method is [FizzBuzz](https://github.com/karnov/karnov-academy-challenges/tree/master/01-Ruby/02-arrays-iterations/04-fizzbuzz) that you may remember from earlier.


## Key learning points

- get familiar with the basic building blocks of RSpec (describe, it, expect)