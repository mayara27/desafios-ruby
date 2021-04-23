class RnaPolymerase
  def transcribe(dna, beginning, ending)

    verif = dna.include?beginning
    a = {A:'U', G:"C", C:'G', T:'A'}
    if (verif == false) || (beginning == "" && ending == "") 
      "Sequence not found"
    
    elsif  dna.index(beginning) > dna.index(ending)
        b = []
        array = dna.chars  
        b = array.reverse.map.with_index{|x,i| a[x.to_sym] if i >= 21 && i <= 55 }.join
        b.reverse
    else
        i1 = dna.index(beginning) + beginning.length
        f = dna.index(ending) - 1
        b = []
        array = dna.chars  
        b = array.map.with_index{|x,i| a[x.to_sym] if i >= i1 && i <= f }.join
      end
    
  end
end
