require "rspec"

class Person
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name)
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
end

RSpec.describe Person do
  let(:student) { described_class.new(f_name, l_name) }

  # TODO
  let(:f_name) { "" }
  let(:l_name) { "" }

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
end
