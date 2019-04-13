class CreateInventWorkplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :invent_workplaces do |t|
      t.references :workplace_type, references: :invent_workplace_types, null: false
      t.references :department, references: :invent_departments, null: false
      t.integer :responsible_tn, limit: 3
      t.references :room, references: :iss_location_rooms
      t.timestamps
    end

    add_foreign_key :invent_workplaces, :invent_workplace_types, column: :workplace_type_id, primary_key: :id
    add_foreign_key :invent_workplaces, :invent_departments, column: :department_id, primary_key: :id
    add_foreign_key :invent_workplaces, :user_infos, column: :responsible_tn, primary_key: :tn
    add_foreign_key :invent_workplaces, :iss_location_rooms, column: :room_id, primary_key: :room_id
  end
end
