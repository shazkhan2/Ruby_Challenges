## Background & Objectives

The order in which arguments are called in a method can often be a source of errors - you have to get it exactly right. This is **order dependency**, and it's a pain.

Keyword arguments were introduced in Ruby 2.0 (we're now using Ruby 3.1). They're a way to name arguments in method calls so that their order doesn't matter.

```ruby
def greet(name:, twitter_handle:, age:)
	puts "My name is #{name} and I'm #{age} years old. Follow me on twitter @#{twitter_handle}"
end

greet(twitter_handle: "stratosfeer", age: 35, name: "Nick")
greet(age: 35, twitter_handle: "stratosfeer", name: "Nick")
```

The two method calls in the example above will both just work. When you use keyword arguments, it doesn't matter what order you pass them in.

The great thing about using keyword arguments instead is that it eliminates argument order dependency. The order no longer matters, because the code just searches for the key and then takes its associated value.

## Specs

- Implement `#better_chorus` to break the argument order dependency in `#chorus`

## Key learning points

- Do you **really** understand why the `#better_chorus` is a more flexible implementation? Try explaining it to your buddy.
