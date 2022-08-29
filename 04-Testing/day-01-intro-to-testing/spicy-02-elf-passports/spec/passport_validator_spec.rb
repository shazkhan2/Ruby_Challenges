require "rspec"
require "yaml"
require_relative "../lib/passport_validator"


RSpec.describe PassportValidator do
  let(:passport_file) { File.read(File.join(__dir__, "data", filename)) }
  let(:passports) { YAML.load(passport_file) }
  let(:filename) { "all_passports.yml" }
  subject { PassportValidator.new(passports) }

  context "for small passport samples" do
    let(:filename) { "tier1_passports.yml" }

    describe "#valid_tier_1_count" do
      it "validates correct number of tier 1 passports" do
        expect(subject.valid_tier_1_count).to eq 2
      end
    end
  end
end
