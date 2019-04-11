class CreateInventDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_departments do |t|
      t.integer :name, unique: true, null: false
      t.timestamps
    end
  end
end
