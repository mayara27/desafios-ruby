class Arrays
 
  def self.multiplica_indices(array)
    resultado = []   
    
    array.each do |i|
      resultado [array.index(i)]= i * array.index(i)
    end
    resultado
  end

end
