class IssLocationBuilding < ApplicationRecord
  self.primary_key = :building_id

  has_many :iss_location_rooms, foreign_key: :building_id, dependent: :destroy

  belongs_to :iss_location_site, foreign_key: :site_id
end
