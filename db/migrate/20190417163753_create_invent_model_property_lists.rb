class CreateInventModelPropertyLists < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_model_property_lists do |t|
      t.references :model, references: :invent_models, null: false
      t.references :property, references: :invent_properties, null: false
      t.references :property_list, references: :invent_property_lists, null: false
      t.timestamps
    end

    add_foreign_key :invent_model_property_lists, :invent_models, column: :model_id, primary_key: :id
    add_foreign_key :invent_model_property_lists, :invent_properties, column: :property_id, primary_key: :id
    add_foreign_key :invent_model_property_lists, :invent_property_lists, column: :property_list_id, primary_key: :id
  end
end
