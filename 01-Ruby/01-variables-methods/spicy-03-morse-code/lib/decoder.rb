def decode(morse_text)
  # TODO: your code here
  morse_code = {
    '.-' => 'A',    '-...' => 'B',  '-.-.' => 'C',  '-..' => 'D',   '.' => 'E',
    '..-.' => 'F',  '--.' => 'G',   '....' => 'H',  '..' => 'I',    '.---' => 'J',
    '-.-' => 'K',   '.-..' => 'L',  '--' => 'M',    '-.' => 'N',    '---' => 'O',
    '.--.' => 'P',  '--.-' => 'Q',  '.-.' => 'R',   '...' => 'S',   '-' => 'T',
    '..-' => 'U',   '...-' => 'V',  '.--' => 'W',   '-..-' => 'X',  '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_text_processed = morse_text.gsub('|', '  ')
  words = morse_text_processed.split('  ').map do |word|
    word.split(' ').map { |char| morse_code[char] }.join
end

decode = words.join(' ').upcase
return decode

end

#irb tests
puts decode(".-")
puts decode(".....")
puts decode(".... . -.--|.--- ..- -.. .|-.. --- -. -|-- .- -.- .|.. -|-... .- -..")
puts decode(".... ..|--. ..- -.-- ...")
puts decode('.... ..')
puts decode('..- -- .- .-. |-.- .... .- -.')
puts decode(".... . -.--|.--- ..- -.. .|-.. --- -. -|-- .- -.- .|.. -|-... .- -..")