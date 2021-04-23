class DoubleStrand
  def complementary_strip(strip)
    a = {A:'T', G:"C", C:'G', T:'A'}
    array = strip.chars
    array.map.with_index{|x,i| a[x.to_sym]}.join
    puts a
  end
end
