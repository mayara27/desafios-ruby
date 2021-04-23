class PagamentoCredito < Pagamento
    attr_accessor :juros
    def initialize(quantidade:, juros:, produto:)

      super(quantidade: quantidade, produto: produto)
      @juros = juros

    end

    def atualizar_valor()
         @valor += (@valor/100) * @juros
    end
  end
  