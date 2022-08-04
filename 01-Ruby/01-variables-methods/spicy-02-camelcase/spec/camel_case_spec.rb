require_relative '../lib/camel_case'

describe "camel_case" do
  it "should change a snake_case string to CamelCase" do
    expect(camel_case("monkey_pants")).to eq("MonkeyPants")
    expect(camel_case("funky_monk")).to eq("FunkyMonk")
  end

  it "should work on a string separated by spaces" do
    expect(camel_case("sports car")).to eq("SportsCar")
    expect(camel_case("food fest")).to eq("FoodFest")
  end

  it "shouldn't change a CamelCase string" do
    expect(camel_case("RubyOnRails")).to eq("RubyOnRails")
  end
end
