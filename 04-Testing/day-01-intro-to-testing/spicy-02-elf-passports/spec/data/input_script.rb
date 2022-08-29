# require 'yaml'

filepath = File.join(__dir__, "my_input.txt")

input = File.read()

passports = input.split("\n\n").map do |passport| 
  passport.split(/\s/).to_h do |field|
    key, value = field.split(":")
    value = value.to_i if %w(byr eyr iyr).include? key
    [key, value]
  end
end

File.write(File.join(__dir__, "my_input.yml"), passports.to_yaml)
