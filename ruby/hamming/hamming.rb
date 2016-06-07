module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length
    return 0            if strand1 == strand2

    control_strand    = strand1.chars
    variation_strand  = strand2.chars

    mutation_indices = control_strand.each_index.select do |index|
      control_strand[index] != variation_strand[index]
    end

    mutation_indices.count
  end
end
