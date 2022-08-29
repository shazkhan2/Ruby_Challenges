# frozen_string_literal: true

require_relative '../lib/pet'

# Dog is a sub-class of Pet
class Dog < Pet
  def talk
    'WOOF!'
  end

  def sleeping?
    true
  end

  def barking?
    false
  end
end
