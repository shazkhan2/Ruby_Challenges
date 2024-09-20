require_relative 'vampire_weapon'

# Create the interface for the vampire with more weapon choices

weapons = [
	"stake", 
	"sword", 
	"cucumber", 
	"panodil"]

materials = [
	"graphene", 
	"silver", 
	"feathers", 
	"cotton"]

vampire_dead = false

until vampire_dead
	puts "You encounter a vampire. Choose your weapon!"
	puts "available weapons: #{weapons.join(', ')}"
	user_weapon = gets.chomp


	puts "What is your #{user_weapon} made of?"
	puts "Choose one from: #{materials.join(', ')}"
	material = gets.chomp 

	reaction = vampire_reaction_enhanced(user_weapon, material)
	puts reaction
	vampire_dead = reaction == "The vampire disintegrates!" || reaction == "The vampire explodes!"
end
