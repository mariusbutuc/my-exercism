module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(control_strand, variation_strand)
    fail ArgumentError  if control_strand.length != variation_strand.length
    return 0            if control_strand        == variation_strand

    comparable_nucleotides = control_strand.chars.zip(variation_strand.chars)

    comparable_nucleotides.count do |control_nucleotide, variation_nucleotide|
      control_nucleotide != variation_nucleotide
    end
  end
end
