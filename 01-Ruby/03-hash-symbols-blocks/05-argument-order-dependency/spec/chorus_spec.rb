require_relative "../lib/chorus"

describe "#better_chorus" do

  it "should have the same behavior as the #chorus method" do
    expect(better_chorus(lyrics: "hey ya")).to eq(chorus("hey ya"))
  end

  it "should follow instructions correctly when additional options are passed as parameters" do
    response = better_chorus(lyrics: "hey ya", vibrato: 10, strong: true, number_of_times: 4)
    expect(response).to eq(chorus("hey ya", 4, 10, true))
  end

end
