class CreateClientMedia < ActiveRecord::Migration
  def self.up
    create_table :client_media do |t|
      t.boolean :active
      t.boolean :published
      t.integer :client_id
      t.string :nome
      t.string :perfilms
      t.timestamps
    end
  end

  def self.down
    drop_table :client_media
  end
end
