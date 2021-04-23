class ContaPoupanca     
    attr_accessor :numero, :titular, :saldo
    def initialize (numero, titular, saldo)
      @numero = numero
      @titular = titular
      @saldo = saldo
    end

    def depositar (valor)
      @saldo += valor
    end

    def atualizar (juros)
      @saldo *= (1 + juros) 
    end
end