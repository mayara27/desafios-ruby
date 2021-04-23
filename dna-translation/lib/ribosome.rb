class Ribosome
  def translate(rna_messenger)
    
    puts rna_messenger.length
    
    rna_t = []
    r = []
    a = {A:'U', G:'C', C:'G', U:'A'}
    trad = {UCA:'aa1', AAC:'aa2', UUU:'aa3', AAA:'aa4', 
          AUC:'aa5', CCA:'aa6', GGU:'aa7', GCC:'aa8'}
    rna = rna_messenger.chars
    rna_t = rna.map.with_index{|x,i| a[x.to_sym]}.join
    r = rna_t.scan(/.../)

    r.each_with_index do |l,i|
      if l != 'UCA' && l != 'AAC' && l != 'UUU' && l != 'AAA' &&
        l != 'AUC' && l != 'CCA' && l != 'GGU' && l != 'GCC'  
        return 'Translation aborted'
      end
    end
    r = r.map.with_index{|x,i| trad[x.to_sym]}.compact.join('-')
  end
end
