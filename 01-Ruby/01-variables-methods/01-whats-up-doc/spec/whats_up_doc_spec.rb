require 'rspec'
require_relative "../lib/whats_up_doc"

describe '#word_length' do
  it "computes the right amount of letters for a word" do
    expect(word_length("fluffy")).to eq(6)
    expect(word_length("parachute")).to eq(9)
  end
end

describe '#bigify' do
  it "transforms all letters to capitalized letters" do
    expect(bigify("it's cloBBering tIme!")).to eq("IT'S CLOBBERING TIME!")
    expect(bigify("tWIst and SHouT")).to eq("TWIST AND SHOUT")
  end
end

describe '#does_it_contain?' do
  it "finds out if a substring is contained in a string" do
    expect(does_it_contain?("pizza pie", "pizza")).to eq(true)
    expect(does_it_contain?("bernie sanders", "idiot")).to eq(false)
  end
end

describe '#from_word_to_letters' do
  it "transforms a word into an array of its letters" do
    expect(from_word_to_letters("NASA")).to eq(%w(N A S A))
    expect(from_word_to_letters("doggo")).to eq(%w(d o g g o))
  end
end

describe '#from_sentence_to_words' do
  it "transforms a sentence into an array of its words" do
    expect(from_sentence_to_words("hey ho let's go")).to eq(%w(hey ho let's go))
    expect(from_sentence_to_words("I'll be back")).to eq(%w(I'll be back))
  end
end

describe '#switcharoo' do
  it "replaces all occurences of the old letter with the new letter" do
    expect(switcharoo("silly bikini", "i", "o")).to eq("solly bokono")
    expect(switcharoo("blood moon", "o", "u")).to eq("bluud muun")
  end
end

describe '#super_divide' do
  it "returns the exact division of the two numbers" do
    expect(super_divide(17, 4)).to eq(4.25)
    expect(super_divide(15, 2)).to eq(7.5)
  end
end

describe '#get_modulo' do
  it "returns the remainder of the division" do
    expect(get_modulo(15, 4)).to eq(3)
    expect(get_modulo(10, 6)).to eq(4)
  end
end

describe '#from_words_to_sentence' do
  it "returns the sentence built from the words" do
    expect(from_words_to_sentence(%w(back in black))).to eq("back in black")
    expect(from_words_to_sentence(%w(highway to hell))).to eq("highway to hell")
  end
end

describe '#word_count_greater_than' do
  it "should return the sentence built from the words" do
    expect(word_count_greater_than(%w(sun moon tiger elephant), 4)).to eq(2)
    expect(word_count_greater_than(%w(fly higher than the great blue sky), 3)).to eq(4)
  end
end

describe '#countdown' do
  it 'should correctly rearranged the elements in the array' do
    expect(countdown(%w(jason zack trini kimberly billy tommy))).to eq(["zack", "trini", "tommy", "kimberly", "jason", "billy"])
  end
  it 'should work with numbers' do
    expect(countdown((1..5).to_a.shuffle)).to eq([5, 4, 3, 2 , 1])
  end
end
