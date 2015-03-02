class CreateClientContracts < ActiveRecord::Migration
  def self.up
    create_table :client_contracts do |t|
      t.boolean :active
      t.boolean :published
      t.integer :client_id
      t.string :nome
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :client_contracts
  end
end
