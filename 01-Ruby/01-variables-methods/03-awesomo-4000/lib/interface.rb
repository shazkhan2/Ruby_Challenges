require_relative 'awesomo'

puts "Welcome to Hollywood, A.W.E.S.O.M.O. Let's hear some amazing movie ideas!"
user_action = nil

until user_action == "exit"

  plot = plot_generator
  puts "Computing...\n---\n"
  puts "Here's the next plot: \n"
  puts plot
  puts "---\n"
  puts "Press enter to generate another plot or type exit to stop the program"
  user_action = gets.chomp
end

puts "Thanks for your help. We're gonna be billionaires!"
