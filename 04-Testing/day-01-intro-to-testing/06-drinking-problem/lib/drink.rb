# frozen_string_literal: true

class Drink
  attr_reader :type, :ounces

  def initialize(type = 'water', ounces = 16)
    @type = type
    @ounces = ounces
  end

  def full?
    ounces >= 16
  end
end
