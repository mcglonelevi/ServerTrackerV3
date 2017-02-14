class CreateDataValues < ActiveRecord::Migration[5.0]
  def change
    create_table :data_values do |t|
      t.references :server, foreign_key: true
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
