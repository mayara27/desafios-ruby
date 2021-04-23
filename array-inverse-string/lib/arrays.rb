class Arrays
  def inverse_strings(array)
    f = []
    array.each_with_index do |palavra, i|
      f[i] = palavra.reverse
    end
    array.difference(f)
  end
end

