class CreateInventTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_types do |t|
      t.string :name, limit: 32, unique: true, null: false
      t.string :short_description, null: false
      t.timestamps
    end
  end
end
