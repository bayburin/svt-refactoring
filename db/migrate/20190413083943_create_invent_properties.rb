class CreateInventProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_properties do |t|
      t.integer :property_order, limit: 2
      t.string :name, limit: 32, null: false
      t.string :short_description, null: false
      t.string :long_description
      t.integer :property_type, limit: 1
      t.boolean :mandatory, default: false, null: false
      t.boolean :uniq, default: false, null: false
      t.boolean :multiple, default: false, null: false
      t.timestamps
    end
  end
end
