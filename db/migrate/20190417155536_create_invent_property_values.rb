class CreateInventPropertyValues < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_property_values do |t|
      t.references :item, references: :invent_items, null: false
      t.references :property, references: :invent_properties, null: false
      t.references :property_list, references: :invent_property_lists, null: false
      t.string :value
      t.timestamps
    end

    add_foreign_key :invent_property_values, :invent_items, column: :item_id, primary_key: :id
    add_foreign_key :invent_property_values, :invent_properties, column: :property_id, primary_key: :id
    add_foreign_key :invent_property_values, :invent_property_lists, column: :property_list_id, primary_key: :id
  end
end
