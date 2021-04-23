class ContaCorrente 
    attr_accessor :numero, :titular, :saldo, :limite
    def initialize (numero, titular, saldo, limite)
      @numero = numero
      @titular = titular
      @saldo = saldo
      @limite = limite
    end

    def depositar (valor)
      @saldo += (valor - 0.10) 
    end

    def atualizar ()
      @saldo
    end
end