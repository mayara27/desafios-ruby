class RnaSplicer
  def splice(rna, introns)
    introns.each_with_index do |p, i|
      rna.slice!p
    end
    rna
  end
end
