require_relative 'shaken_not_stirred'


puts "Welcome to the MI6 spy introduction generator"

puts "What's your first name? "
spy_first_name = gets.chomp
puts "What's your last name?"
spy_last_name = gets.chomp

puts "Thanks for the information."

puts "Henceforth, all emails you send will begin with: "
puts introduce_spy(spy_first_name, spy_last_name)
