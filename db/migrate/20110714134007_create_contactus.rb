class CreateContactus < ActiveRecord::Migration
  def self.up
    create_table :contactus do |t|
      t.string "nume"
      t.string "telefon"
      t.string "email"
      t.text "mesaj"
      t.timestamps
    end
  end

  def self.down
    drop_table :contactus
  end
end
