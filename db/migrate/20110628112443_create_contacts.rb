class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :limit => 25
      t.string "phone", :limit => 20
      t.text "qm"
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
