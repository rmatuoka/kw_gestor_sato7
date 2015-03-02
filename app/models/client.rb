class Client < ActiveRecord::Base
  attr_accessible :active, :published, :rsocial, :nfantasia, :cnpj,:logradouro, :numero, :complemento, :bairro, :cidade, :estado, :pais,  :segmento, :atividade, :telefone, :celular, :email, :site, :responsavelmkt, :mkttel, :mkt
end
