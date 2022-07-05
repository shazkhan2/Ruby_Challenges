## Specs

Write a program that prints the lyrics of the song [99 Bottles of Beer](http://www.99-bottles-of-beer.net/lyrics.html).

It will take as an argument the starting number of bottles, given through the command line when executing the program. This program should work this way.

```ruby
beer_song(5)
# should return
"5 bottles of beer on the wall, 5 bottles of beer!
Take one down, pass it around, 4 bottles of beer on the wall!
4 bottles of beer on the wall, 4 bottles of beer!
Take one down, pass it around, 3 bottles of beer on the wall!
3 bottles of beer on the wall, 3 bottles of beer!
Take one down, pass it around, 2 bottles of beer on the wall!
2 bottles of beer on the wall, 2 bottles of beer!
Take one down, pass it around, 1 bottle of beer on the wall!
1 bottle of beer on the wall, 1 bottle of beer!
Take one down, pass it around, no more bottles of beer on the wall!"
```

### Hint

* I hope you noticed the change from bottl*es* to bottl*e* when only 1 bottle remains!
* In ruby you can uses the `"\n"` to indicate a new line in a string. It only works with double quoted strings:
```ruby
string = "This is the first line\nThis is the second line"
puts string
# => This is the first line
# This is the second line

dont_do_this = 'This is the first line\nThis is the second line'
puts dont_do_this
# => This is the first line\nThis is the second line
```
