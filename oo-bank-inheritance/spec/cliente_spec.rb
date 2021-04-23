require 'spec_helper'

describe Cliente do
  it "deveria ser possivel criar uma pessoa" do
    nome = "Jose"
    sobrenome = "da Silva"
    cpf = "111.111.111-00"
    cliente = Cliente.new(nome, sobrenome, cpf)

    expect(cliente.nome).to eq nome
    expect(cliente.sobrenome).to eq sobrenome
    expect(cliente.cpf).to eq cpf
  end

  it "deveria ser possivel obter nome completo" do
    nome = "Jose"
    sobrenome = "da Silva"
    cpf = "111.111.111-00"
    cliente = Cliente.new(nome, sobrenome, cpf)

    expect(cliente.nome_completo).to eq "#{cliente.nome} #{cliente.sobrenome}"
  end

  it "deveria ter o nome completo com tratamento, quando houver tratamento" do
    nome = "Jose"
    sobrenome = "da Silva"
    cpf = "111.111.111-00"
    cliente = Cliente.new(nome, sobrenome, cpf)
    cliente.tratamento = "Sr."

    expect(cliente.nome_completo).
      to eq "#{cliente.tratamento} #{cliente.nome} #{cliente.sobrenome}"
  end
end
