require "rspec"
require 'webmock/rspec'

require_relative "../lib/request"

WebMock.disable_net_connect!

# https://github.com/bblimke/webmock

RSpec.describe Request do
  describe "#get" do
    it "stubs request" do
      stub = stub_request(:get, "https://www.example.com")

      described_class.new("https://www.example.com").get

      expect(stub).to have_been_requested
    end


    it "can return custom data" do
      pending "TODO: Figure out how to use webmock to return a custom payload"
    end

    it "should handle timeouts" do
      stub_request(:any, 'https://www.example.com').to_timeout

      pending "TODO: Request this stub, and expect an error"
      # expect { described_class.new("https://www.example.com").get }.to raise_error(Faraday::ConnectionFailed)
    end
  end

  describe "#post" do
    # TODO: Add a #post method to the request class, then test it here
    # Use webmock to stub the post requests
  end
end
