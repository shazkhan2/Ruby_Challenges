require_relative 'vampire_weapon'

# TODO: create the interface for your encounter with a vampire.
puts "Hello smarty pant. I am a vampire ready to eat you. Choose a weapon if you want to fight me first!"
user_weapon = gets.chomp

reaction = vampire_reaction(user_weapon)

puts reaction