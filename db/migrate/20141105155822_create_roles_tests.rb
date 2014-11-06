class CreateRolesTests < ActiveRecord::Migration
  def self.up
    create_table :roles_tests do |t|
      t.string :name
      t.integer :number
      t.timestamps
    end
  end

  def self.down
    drop_table :roles_tests
  end
end
