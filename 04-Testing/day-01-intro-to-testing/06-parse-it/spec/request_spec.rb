require "spec_helper"

RSpec.describe Request do
  describe "#call" do
    let(:request) { described_class.new("https://www.example.com/clients").call }

    it "parses JSON payload" do
      # TODO: Write a test expecting three client hashes in the parsed JSON
      # HINT: You will need to update the class method to do the parsing
    end
  end
end
