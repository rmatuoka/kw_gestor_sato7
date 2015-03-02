class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.boolean :active
      t.boolean :published
      t.string :rsocial
      t.string :nfantasia
      t.string :cnpj
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :pais
      t.string :segmento
      t.string :atividade
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :site
      t.string :responsavelmkt
      t.string :mkttel
      t.string :mkt
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
