def add_two_numbers(first_number, second_number)
  return first_number + second_number
end

def cryptostring(some_word)
  return some_word.swapcase.chars.shuffle.join
end

def can_you_vote?(age)
  if age > 18
    return true
  else
    return false
end
end

def bio(name, age, location)
  return "Hello, my name is " + name + ". I'm " + age.to_s + " years old and I live in " + location 
end
