class CreateInventWorkplaceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_workplace_types do |t|
      t.string :name, null: false
      t.string :short_description
      t.timestamps
    end
  end
end
