class Arrays


  def self.converte_impares_por(lista, numero)

    a = lista.map {|x| x*numero if x.odd? }.compact
    b = lista.map {|x| x if x.odd? }.compact
    res = [b, a]
  end

  def self.converte_pares_por(lista, numero)
    a = lista.map {|x| x*numero if x.even? }.compact
    b = lista.map {|x| x if x.even? }.compact
    res = [b, a]
  end
end
