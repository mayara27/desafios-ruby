class RomanNumerals
    def from_decimal (valor)
        decimais = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        romanos = ['M', 'CM', 'D', 'CD','C', 'XC','L','XL','X','IX','V','IV','I']
        r = []
        
        decimais.each_with_index do |n, i|
            c = (valor / decimais[i])
            r.append(romanos[i] * c)
            valor -= decimais[i] * c
        end

        r.join        
    end
end
