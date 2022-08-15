require "text_analyzer"

describe "#analyze" do
  it "should return a hash" do
    expect(analyze("")).to be_a Hash
  end

  it "should return basic statistics for a simple sentence" do
    expect(analyze("I love programming.")).to eq({
      character_count: 19,
      character_count_excluding_spaces: 17,
      line_count: 1,
      word_count: 3,
      sentence_count: 1,
      paragraph_count: 1,
      average_words_per_sentence: 3.0,
      average_sentences_per_paragraph: 1.0
    })
  end

  it "returns correct stats for the Gettysburg address" do 
    text = File.read("spec/gettysburg_address.txt")
    expected = {
      character_count: 1467,
      character_count_excluding_spaces: 1188,
      line_count: 5,
      word_count: 271,
      sentence_count: 10,
      paragraph_count: 3,
      average_words_per_sentence: 27.1,
      average_sentences_per_paragraph: 3.3
    }
    expect(analyze(text)).to eq(expected)
  end

  it "returns correct stats for I Have a Dream" do 
    text = File.read("spec/i_have_a_dream.txt")
    expected = {
      character_count: 9722,
      character_count_excluding_spaces: 7889,
      line_count: 41,
      word_count: 1734,
      sentence_count: 84,
      paragraph_count: 21,
      average_words_per_sentence: 20.6,
      average_sentences_per_paragraph: 4.0
    }
    expect(analyze(text)).to eq(expected)
  end
end
