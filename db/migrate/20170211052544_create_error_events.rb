class CreateErrorEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :error_events do |t|
      t.references :server, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
