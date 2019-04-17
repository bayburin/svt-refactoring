class CreateInventPropertyLists < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_property_lists do |t|
      t.references :property, references: :invent_properties, null: false
      t.string :name, null: false
      t.string :short_description, null: false
      t.timestamps
    end

    add_foreign_key :invent_property_lists, :invent_properties, column: :property_id, primary_key: :id
  end
end
