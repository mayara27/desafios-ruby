class ArrayUtils
  def self.compara(lista1, lista2)
   lista1.sort == lista2.sort
    
  end
  
  def self.divisiveis(lista1, lista2)
    
    a = Array.new(51) {|index| index }   
    a1 = a.map.with_index{|x, i| x if x % lista1 == 0 &&  x % lista2 == 0 && x != 0}.compact
    a2 = a.map.with_index{|x, i| x if x % lista1 == 0 &&  x % lista2 != 0 && x != 0}.compact
    a3 = a.map.with_index{|x, i| x if x % lista1 != 0 &&  x % lista2 == 0 && x != 0}.compact
    b = [a1, a2, a3]

  end
  
  def self.soma(list)
    total = 0
    list.each do |numero|
      total += numero
    end
    total
  end

  def self.combinar(numeros, letras)
    a = [[],[]]
    numeros.each_with_index do |num, i|
      letras.each_with_index do |letra, j|
        a << [num,letra]
      end
    end
    a.reject(&:empty?)
  end

end
