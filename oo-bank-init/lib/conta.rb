class Conta
    attr_accessor :numero, :titular, :saldo, :limite

  def initialize(numero , titular , saldo , limite )
    @numero = numero
    @titular = titular
    @saldo = saldo
    @limite = limite
  end

  def no_limite?()
    if @saldo >= - @limite
        true
    else
        false
    end
  end

  def sacar (valor)
    if (@saldo - valor) < -@limite
        no_limite?()
        false
    else
        @saldo -= valor
        true
    end
  end

  def depositar (valor)
    @saldo += valor
  end
    
  def transfere(conta2, valor) 
    if (@saldo + @limite) >= @valor.to_f
      @saldo -= valor
      conta2.saldo += valor
      true
    else
    end
    false
  end

  def == (conta2)
    self.numero == conta2.numero && self.titular == conta2.titular && self.saldo == conta2.saldo && self.limite == conta2.limite
  end

end
