class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "role", :limit => 25
      t.string "password", :limit => 40
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end