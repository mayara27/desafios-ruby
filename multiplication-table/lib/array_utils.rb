class ArrayUtils
  def self.multiplos(qtd, multiplo)
    m = Array.new(qtd) {|index| index }
    m.map {|x| (x+1) * multiplo}
end

def self.tabuada(qtd)
  t = []
  for m in 1..qtd
    l = []
    for n in 1..10
      l << m*n
    end
    t << l
  end
  t
  end
end
