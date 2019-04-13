class CreateInventPropertyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_property_types do |t|
      t.references :type, references: :invent_types, null: false
      t.references :property, references: :invent_properties, null: false
      t.timestamps
    end

    add_foreign_key :invent_property_types, :invent_types, column: :type_id, primary_key: :id
    add_foreign_key :invent_property_types, :invent_properties, column: :property_id, primary_key: :id
  end
end
