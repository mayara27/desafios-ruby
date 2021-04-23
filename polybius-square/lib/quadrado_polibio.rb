class QuadradoPolibio
  def criptografar(texto)
    texto.downcase!
    t = texto.gsub(/\s+/, "")
    t = t.chars
    a = []
    trad = {a:11, b:12, c:13, d:14, e:15, f:16, 
            g:21, h:22, i:23, j:24, k:25, l:26,
            m:31, n:32, o:33, p:34, q:35, r:36,
            s:41, t:42, u:43, v:44, w:45, x:46,
            y:51, z:52}

    trad_num = {0=>'53', 1=>'54', 2=>'55', 3=>'56',
    4=>'61', 5=>'62', 6=>'63', 7=>'64', 8=>'65', 9=>'66'}

    t.map.with_index do |x,i| 
      if  (x == '0') || (x == '1') || (x == '2') || (x == '3') || (x == '4') || (x == '5') || (x == '6') || (x == '7') || (x == '8') || (x == '9')
        a[i] = trad_num[x.to_i]      
      else
        a[i] = trad[x.to_sym]
    end
  end
    a.join
  end

  def descriptografar(texto)

    t = texto.scan(/../)
    trad = {11=>'a', 12=>'b', 13=>'c', 14=>'d', 15=>'e', 16=>'f', 
    21=>'g', 22=>'h', 23=>'i', 24=>'j', 25=>'k', 26=>'l',
    31=>'m', 32=>'n', 33=>'o', 34=>'p', 35=>'q', 36=>'r',
    41=>'s', 42=>'t', 43=>'u', 44=>'v', 45=>'w', 46=>'x',
    51=>'y', 52=>'z', 53=>'0', 54=>'1', 55=>'2', 56=>'3',
    61=>'4', 62=>'5', 63=>'6', 64=>'7', 65=>'8', 66=>'9'}

   t.map.with_index{|x,i| trad[x.to_i]}.join

  end
end
