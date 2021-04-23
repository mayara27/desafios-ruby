class Arrays
  
  def self.multiplica_antecessor_predecessor(array)
    a = []
    array.map.with_index do |x, i|
      if  i == 0
       a << array[i].to_i * array[i+1].to_i
      elsif i == array.index(array.last)
        a << array[i].to_i * array[i-1].to_i
      else
        a<< array[i-1].to_i * array[i+1].to_i
      end
    end 
    a
  end
end
