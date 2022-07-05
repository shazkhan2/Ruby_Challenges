## Background & Objectives

Change to the working directory of the assignment, run the test and open it up in VS Code:

```bash
  cd ~/karnov-ruby-challenges/spicy-04-valid-sudoku
  rake
  code .
```

Imagine you're doing an online game app and want to code a Sudoku game, the classic puzzle game from Japan.

You've reached the point where you need to check the player's board to see if her solution is valid. It's coding time!

If you don't know the rules to Sudoku, you [can check them out here.](http://www.sudoku.name/rules/en).

Your method should accept an array of 9 arrays, each with 9 numbers, such as this one:

```ruby
[
  [5, 3, 4, 6, 7, 8, 9, 1, 2],
  [6, 7, 2, 1, 9, 5, 3, 4, 8],
  [1, 9, 8, 3, 4, 2, 5, 6, 7],
  [8, 5, 9, 7, 6, 1, 4, 2, 3],
  [4, 2, 6, 8, 5, 3, 7, 9, 1],
  [7, 1, 3, 9, 2, 4, 8, 5, 6],
  [9, 6, 1, 5, 3, 7, 2, 8, 4],
  [2, 8, 7, 4, 1, 9, 6, 3, 5],
  [3, 4, 5, 2, 8, 6, 1, 7, 9]
]
```

This is a good example of how a simple `true` or `false` output can require good planning, many iterations and some abstract thinking.
Because the input is an array of arrays, it is easy to lose track of where you are in process. Check your code as you progress to make sure the outputs of each method is exactly what you want.

Plan out your code before you begin. Avoid placing everything in a single method

## Specs

- The `#valid_sudoku?` method accepts an array of 9 arrays, each of 9 numbers as a parameter and return `true` if the sudoku board is solved.
- The `#valid_section?` method takes an array of 9 numbers and returns true if the array contains each number from 1 to 9
- The `#vertical_lines` method takes the sudoku board and returns the same board, but with the vertical lines as each of the 9 elements.
- The `#regions` method takes the sudoku board and returns the same board, but with all the 3x3 regions as each of the 9 elements. Starting top left going to the right.
