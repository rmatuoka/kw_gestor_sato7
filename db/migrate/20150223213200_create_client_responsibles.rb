class CreateClientResponsibles < ActiveRecord::Migration
  def self.up
    create_table :client_responsibles do |t|
      t.boolean :active
      t.boolean :published
      t.integer :client_id
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.string :setor
      t.timestamps
    end
  end

  def self.down
    drop_table :client_responsibles
  end
end
