class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :ipaddress
      t.string :hostname
      t.string :loginname
      t.string :loginpassword

      t.timestamps
    end
  end
end
