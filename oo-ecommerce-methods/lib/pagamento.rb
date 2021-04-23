
class Pagamento 
  attr_accessor  :quantidade, :produto, :preco, :valor

  def initialize(quantidade:, produto: Produto.new , preco: produto.preco )
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    produto.remove_estoque(quantidade)
    @valor = @quantidade * preco

  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end

