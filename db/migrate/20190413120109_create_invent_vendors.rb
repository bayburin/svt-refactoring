class CreateInventVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_vendors do |t|
      t.string :name, nil: false
      t.timestamps
    end
  end
end
