def complementary_dna(dna_strand)

  if dna_strand.match?(/[^ATCGatcg]/)
    return "invalid dna strand detected"
  end

  dna_strand = dna_strand.upcase

  pairs = {
    'A' => 'T',
    'T' => 'A',
    'C' => 'G',
    'G' => 'C'
  }

  complementary_dna = dna_strand.chars.map { |char| pairs[char] }.join

  return complementary_dna
end

# irb test 
puts complementary_dna("ACGT")    
puts complementary_dna("acgt")    
puts complementary_dna("aCgT")    
puts complementary_dna("aCgT123") 
