require "rspec"

class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    a / b
  end

  def exponentiate(a, b)
    a**b
  end

  def modulo(a, b)
    a % b
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "can add two numbers together" do
      calculator = Calculator.new
      expect(calculator.add(1, 2)).to eq(3)
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
end
