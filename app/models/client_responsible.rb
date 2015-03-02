class ClientResponsible < ActiveRecord::Base
  attr_accessible :active, :published, :client_id, :nome, :cpf, :rg, :endereco, :setor
end
