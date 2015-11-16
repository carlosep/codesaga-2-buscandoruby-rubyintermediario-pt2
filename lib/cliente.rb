class Cliente
  attr_reader :nome, :sobrenome, :cpf
  #deveria ser possivel criar uma pessoa
  def initialize(nome: nome, sobrenome: sobrenome, cpf: cpf)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
  end

  #deveria ter o nome completo com tratamento, quando houver tratamento
  def tratamento=(trat)
  	@tratamento = "#{trat}"
  end
  def tratamento()
  	@tratamento
  end

  #deveria ser possivel obter nome completo
  def nome_completo
  	if(@tratamento)
  		"#{@tratamento} #{@nome} #{@sobrenome}"
  	else
  		"#{@nome} #{@sobrenome}"
  	end
  end
end
