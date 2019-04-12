class CreateIssLocationBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :iss_location_buildings, primary_key: :building_id do |t|
      t.references :site, references: :iss_location_sites, null: false
      t.string :name
      t.string :short_description
      t.timestamps
    end

    add_foreign_key :iss_location_buildings, :iss_location_sites, column: :site_id, primary_key: :site_id
  end
end
