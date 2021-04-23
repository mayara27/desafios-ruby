class Cliente
    attr_accessor :nome, :sobrenome, :cpf, :tratamento

  def initialize(nome , sobrenome  = nil, cpf = nil)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf

  end

  def nome_completo()
    if  tratamento == nil
        @nome + " " + @sobrenome
    else
        tratamento + " " + @nome + " " + @sobrenome
    end
  end
end
