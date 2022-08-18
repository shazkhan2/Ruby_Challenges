require "german_shepherd"

describe GermanShepherd do
  describe "bark" do
    it "can bark" do
      german_shepherd = GermanShepherd.new
      expect(german_shepherd.bark).to eq("woof woof")
    end
  end

  describe "inheritance" do
    xit "should bark like a dog" do
      german_shepherd = GermanShepherd.new
      dog = Dog.new

      expect(german_shepherd.bark).to eq(dog.bark)
    end

    xit "should add Dog as a superclass of GermanShepherd" do
      expect(GermanShepherd.superclass).to eq(Dog)
    end
  end
end
