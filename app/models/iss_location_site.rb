class IssLocationSite < ApplicationRecord
  self.primary_key = :site_id
  
  has_many :iss_location_buildings, foreign_key: :site_id, dependent: :destroy
  
  accepts_nested_attributes_for :iss_location_buildings
end
