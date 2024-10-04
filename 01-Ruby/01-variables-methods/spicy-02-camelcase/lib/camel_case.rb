
def camel_case(string)
  words = string.split(/[^a-zA-Z0-9]/) 
  words.map.with_index { |word, index| 
    index == 0 ? word.downcase : word.capitalize 
  }.join
end