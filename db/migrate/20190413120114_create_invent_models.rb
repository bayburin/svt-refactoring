class CreateInventModels < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_models do |t|
      t.references :vendor, references: :invent_vendors, null: false
      t.references :type, references: :invent_types, null: false
      t.string :name, null: false
      t.timestamps
    end

    add_foreign_key :invent_models, :invent_vendors, column: :vendor_id, primary_key: :id
    add_foreign_key :invent_models, :invent_types, column: :type_id, primary_key: :id
  end
end
