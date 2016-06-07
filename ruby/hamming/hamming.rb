module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    return 0            if strand1 == strand2

    control_strand    = strand1.chars
    variation_strand  = strand2.chars
    mutations_count   = 0

    control_strand.each_with_index do |nucleotide, index|
      next if variation_strand[index] == nucleotide
      mutations_count += 1
    end

    mutations_count
  end
end
