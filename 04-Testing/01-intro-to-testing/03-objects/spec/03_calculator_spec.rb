require "rspec"

class Calculator
  def self.add(a, b)
    a + b
  end

  def self.subtract(a, b)
    a - b
  end

  def self.multiply(a, b)
    a * b
  end

  def self.divide(a, b)
    a / b
  end

  def self.exponentiate(a, b)
    a**b
  end

  def self.modulo(a, b)
    a % b
  end

  def self.square_root(a)
    Math.sqrt(a)
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "can add two numbers together" do
      expect(Calculator.add(1, 2)).to eq(3)
    end
  end

  describe "#subtract" do
    # TODO
  end

  describe "#multiply" do
    # TODO
  end

  describe "#divide" do
    # TODO
  end

  describe "#exponentiate" do
    # TODO
  end

  describe "#modulo" do
    # TODO
  end

  describe "#square_root" do
    # TODO
  end
end
