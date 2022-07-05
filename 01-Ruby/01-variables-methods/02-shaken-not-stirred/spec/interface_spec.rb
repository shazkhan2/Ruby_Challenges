require 'rspec'
require 'open3'

describe 'interface.rb' do
  it "should display the correct introduction" do
    Open3.popen3('ruby lib/interface.rb') do |input, output, err, thread|
      input.puts "bat"
      input.puts "man"
      expect(output.read).to match(/The name's MAN, Bat MAN./)
    end
  end
end
