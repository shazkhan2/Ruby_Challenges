# - First, you take the sum of all its digits.
# - Second, you reverse that sum's digits
# - Third, you multiply the sum with its reverse
# - If the the result of that multiplication is equal to the number, the number is a happy number.

def happy_number?(number)
  # TODO: your code here
    sum = number.to_s.chars.map(&:to_i).sum
    reversed = sum.to_s.reverse.to_i
    multiply = sum * reversed
    multiply == number
  end
  