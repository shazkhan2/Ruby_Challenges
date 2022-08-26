require "rspec"

class Car
  COLORS = ["red", "green", "blue", "black"]

  def initialize(color)
    @color = color
  end

  def permitted_color?
    COLORS.include?(@color)
  end
end

RSpec.describe Car do
  subject(:car) { described_class.new(color) }

  describe "#permitted_color?" do
    context "with permitted color" do
      let(:color) { "red" }

      it "returns true" do
        expect(car.permitted_color?).to eq true
      end

      it "is permitted" do
        expect(car).to be_permitted_color
      end

      it { is_expected.to be_permitted_color }
    end

    context "with unpermitted color" do
      let(:color) { "octarine" }

      it "returns false" do
        # TODO
      end

      it "isn't permitted" do
        # TODO
      end

      # TODO
      it {}
    end
  end
end
