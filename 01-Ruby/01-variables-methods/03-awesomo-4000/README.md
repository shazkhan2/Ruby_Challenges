## Background and Objectives

```bash
  cd ~/karnov-ruby-challenges/03-awesomo-4000
  rake
  code .
```

You're A.W.E.S.O.M.O 4000. A robot conceived by Japanese scientists to supply Hollywood with awesome movie ideas. You come fully equipped with a list of actors, settings and plot twists that will feed countless genius movie plots to the next generation of cinema.

- A deeper look into methods and how you can call them inside other methods.
- An introduction to constants and how they differ from variables.
- Understand how to integrate array elements from different arrays into a single string.

## Specs

### Plot Generator

- Implement the `#plot_generator` method defined in the `lib/awesomo.rb` file. It should return a string of a movie plot.

### Constants

A constant is similar to a variable, but **it can be used inside a method definition**. So in this example method:

```ruby
BEST_NUMBER = 6

def my_favorite_number
  BEST_NUMBER
end

```

`my_favorite_number` will return 6. A variable in the place of BEST_NUMBER would result in an error, as variables are not accessible inside a method definition.

The way you define a constant in ruby is similar to defining a variable, but you use **all caps** to write its name. `GREETING = "Hello there"` is an example of defining a constant.

In this exercise, the constants are already defined for you, so you're free to use them inside your methods.

### Methods in other methods

You can call methods inside your other methods. Use it to your advantage in this exercise to define. Inside your `#plot_generator` method, you should call the other methods defined in the assignment to generate one final string.

## Learning Badges

Again, ask yourself these questions and make sure you can answer all of them:

### on constants
* What are the constants in my code?
* Where are the values assigned to these constants and where do I use them?
* What's the scope of a constant?

### on methods
* What are the methods in my program? Where do I define them?
* Where do I call them?
* What's the flow of my program when I try to read it line by line?


## Tips & Resources
* Each of the following methods should work in a similar way: `#pick_actor`, `#pick_setting`, `#pick_close_one` and `#pick_punchline`. They should take the array defined in their respective constant and return a single random element of that array. Look in the [Array Section](http://ruby-doc.org/core-2.6.3/Array.html) of the Ruby Doc to find the relevant method
