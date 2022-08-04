def vampire_reaction(your_weapon)
  if your_weapon == "stake"
    "The vampire disintegrates!"
  else
    "The vampire laughs at your ineffective weapon."
  end
end

def vampire_reaction_enhanced(your_weapon, material)
  if material == "silver"
    "The vampire explodes!"
  else
    vampire_reaction(your_weapon)
  end
end


# def vampire_reaction(your_weapon)
#   # Your code here
# end

# def vampire_reaction_enhanced(your_weapon, material)
#   # Your code here
# end