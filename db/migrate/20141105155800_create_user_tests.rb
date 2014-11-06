class CreateUserTests < ActiveRecord::Migration
  def self.up
    create_table :user_tests do |t|
      t.string :name
      t.integer :number
      t.timestamps
    end
  end

  def self.down
    drop_table :user_tests
  end
end