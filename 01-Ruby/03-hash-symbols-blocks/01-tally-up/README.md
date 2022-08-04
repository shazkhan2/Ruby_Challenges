## Background & Objectives

### Technical overview

In Ruby, there's a very useful `Array#tally` method that counts the elements of an array in the form of a hash.

Example:

```ruby
	groceries = ["egg", "milk", "salt", "milk", "egg", "egg"]
	groceries.tally # => { "egg" => 3, "milk" => 2, "salt" => 1 }
```

Your goal in this assignment is to re-implement this method any way you want (but you can't actually use tally of course).

## Key learning points

- What ways do you know to transform an array into a hash?
- 