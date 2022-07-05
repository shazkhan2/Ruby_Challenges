## Instructions:

```bash
  cd ~/karnov-ruby-challenges/spicy-02-camelcase
  rake
  code .
```

A big thing we strive for when writing code is code legibility. We want our code to be easily readable by coworkers to minimize the time it takes to read and understand code as much as possible.

One of the tools used by programmers to achieve this are naming variables and methods following a certain pattern. In Ruby for example, we always name our variables and methods in `lower_snake_case`, as such:

```ruby
  my_name = "Bruce Wayne"

  def multiply_numbers(first_number, second_number)
    return first_number * second_number
  end
```

`lower_snake_case` means that we write compound names all in downcase and separated by underscores.

Another writing convention is called `CamelCase` where the first letter of each separate word is capitalized. JavaScript uses `lowerCamelCase` to name variables and functions. Another example is `kebab-case` where words are separated by a dash.

Write a method that takes a string as an argument, and transform into the same string but using the `CamelCase` naming convention.

## Key learning points

- Why do we have formatting conventions on variables and methods?
- What's the difference between snake case and camel case?
- How do we manipulate multiple words individually inside the same string?
