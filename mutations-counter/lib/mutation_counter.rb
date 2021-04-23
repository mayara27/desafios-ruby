class MutationCounter
  
  def calculate(dna_collection)
    d = []
    e = []
    f = []
    c = 0
    dna_collection.each_with_index do |arrayzinho, i|
      
      c = 0
      d [i]= arrayzinho
      a = d[i][0]
      b = d[i][1]
      e = a.split("")
      f = b.split("")
      
      e.each_with_index do |letra, i|
        if  letra != f[i]
          c += 1
          puts c
        end
      end
  end
  c
  end
end

