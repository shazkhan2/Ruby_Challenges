def encode(text)
  # TODO: write a method which returns the morse sentence for the given text
  # NOTE: you may want to create a `encode_word` method

  morse_code = {
    'A' => '.-',    'B' => '-...',  'C' => '-.-.',  'D' => '-..',   'E' => '.',
    'F' => '..-.',  'G' => '--.',   'H' => '....',  'I' => '..',    'J' => '.---',
    'K' => '-.-',   'L' => '.-..',  'M' => '--',    'N' => '-.',    'O' => '---',
    'P' => '.--.',  'Q' => '--.-',  'R' => '.-.',   'S' => '...',   'T' => '-',
    'U' => '..-',   'V' => '...-',  'W' => '.--',   'X' => '-..-',  'Y' => '-.--',
    'Z' => '--..'
  }

  text_processed = text.upcase.gsub(/[^A-Z\s]/, '')
    morse_words = text_processed.split(" ").map do |word|
    word.chars.map { |char| morse_code[char] }.join(" ")
end

encode_word = morse_words.join('|')
return encode_word

end

puts encode("Hey Jude, don't make it bad")
