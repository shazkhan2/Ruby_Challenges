require "rspec"

class Person
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def initials
    "#{first_name.chars.first.upcase}#{last_name.chars.first.upcase}"
  end

  def can_buy_beer?
    false
  end
end

RSpec.describe Person do
  let(:student) { described_class.new(f_name, l_name, age) }

  # TODO
  let(:f_name) { "" }
  let(:l_name) { "" }
  let(:age)    { 0 }

  describe "#full_name" do
    it "returns first name and last name together" do
      # TODO
    end
  end

  describe "#initials" do
    it "returns first and last initials, capitalized" do
      # TODO
    end
  end

  describe "#can_buy_beer?" do
    it "should be able to buy beer" do
      # TODO: Fix the method in the above class to use the provided age,
      # and then write a test that says you can buy beer
    end
  end
end
