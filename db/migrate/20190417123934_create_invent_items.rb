class CreateInventItems < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_items do |t|
      t.references :type, references: :invent_types, null: false
      t.references :workplace, references: :invent_items
      t.references :model, references: :invent_models
      t.string :item_model
      t.string :invent_num
      t.integer :status, limit: 1, index: true
      t.integer :priority, limit: 1, index: true
      t.timestamps
    end

    add_foreign_key :invent_items, :invent_types, column: :type_id, primary_key: :id
    add_foreign_key :invent_items, :invent_workplaces, column: :workplace_id, primary_key: :id
    add_foreign_key :invent_items, :invent_models, column: :model_id, primary_key: :id
  end
end
