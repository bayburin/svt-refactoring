class CreateIssLocationSites < ActiveRecord::Migration[5.2]
  def change
    create_table :iss_location_sites, primary_key: :site_id do |t|
      t.string :name, unique: true, null: false
      t.string :short_description
      t.timestamps
    end
  end
end
