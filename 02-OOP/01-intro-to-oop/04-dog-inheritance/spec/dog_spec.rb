require "dog"

describe Dog do
  describe "bark" do
    it "can bark" do
      dog = Dog.new
      expect(dog.bark).to eq("woof woof")
    end
  end
end
