class CreateApikeys < ActiveRecord::Migration[5.0]
  def change
    create_table :apikeys do |t|
      t.string :publickey
      t.string :privatekey

      t.timestamps
    end
  end
end
