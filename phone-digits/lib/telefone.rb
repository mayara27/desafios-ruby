class Telefone
  def teclar(sequencia)
    s = sequencia.chars
    a = []
    aux = s.first
         
    telef = {0=>' ', 2=>'a', 22=>'b', 222=>'c', 3=>'d', 33=>'e', 333=>'f',
            4=>'g', 44=>'h', 444=>'i', 5=>'j', 55=>'k', 555=>'l',
            6=>'m', 66=>'n', 666=>'o', 7=>'p', 77=>'q', 777=>'r',
            7777=>'s', 8=>'t', 88=>'u', 888=>'v', 9=>'w', 99=>'x',
            999=>'y', 9999=>'z'}

    s.each_with_index do |num, i|
      if num == s[i+1]
        aux = aux + "#{num}"
      else
        a << aux
        aux = s[i+1]
      end
    end
    a.delete(" ")
    a.map.with_index{|x,i| telef[x.to_i]}.join
  end
end
