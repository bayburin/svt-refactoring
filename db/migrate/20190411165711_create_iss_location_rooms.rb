class CreateIssLocationRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :iss_location_rooms, primary_key: :room_id do |t|
      t.references :building, refernces: :iss_location_buildings, null: false
      t.string :name
      t.timestamps
    end

    add_foreign_key :iss_location_rooms, :iss_location_buildings, column: :building_id, primary_key: :building_id
  end
end
