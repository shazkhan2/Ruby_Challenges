def complementary_dna(dna_strand)

  if dna_strand.match?(/[^ATCGatcg]/)
    return "invalid dna strand detected"
  end

  dna_strand = dna_strand.upcase
#the following is a hash. Hashes are used when we wish to access an objects corresponsing value. 
# Like array element is accessed using its index, hashes are built as objects and accessed using the corresponsing element. 
  pairs = {
    'A' => 'T',
    'T' => 'A',
    'C' => 'G',
    'G' => 'C'
  }

  #To access a key in a hash we use [] while | | has a block scope which will take the value of each element in the collection. 
  complementary_dna = dna_strand.chars.map { |char| pairs[char] }.join

  return complementary_dna
end

# irb test 
puts complementary_dna("ACGT")    
puts complementary_dna("acgt")    
puts complementary_dna("aCgT")    
puts complementary_dna("aCgT123") 
