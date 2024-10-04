# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'

def age_in_days(day, month, year)
  # TODO: your code here
  birthdate = Date.new(year, month, day)
  today = Date.today
  age = (today - birthdate).to_i
  
end
