class IssLocationRoom < ApplicationRecord
  self.primary_key = :room_id
  
  belongs_to :iss_location_building, foreign_key: :building_id
end
