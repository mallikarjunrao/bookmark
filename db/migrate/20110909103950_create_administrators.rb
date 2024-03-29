class CreateAdministrators < ActiveRecord::Migration
  def self.up
    create_table :administrators do |t|
      t.string :username
      t.string :password
      t.string :mail
      t.string :role
      t.timestamps
    end
  end

  def self.down
    drop_table :administrators
  end
end
