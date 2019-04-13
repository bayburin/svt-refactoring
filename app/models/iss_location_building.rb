class IssLocationBuilding < ApplicationRecord
  self.primary_key = :building_id

  has_many :rooms, class_name: 'IssLocationRoom', foreign_key: :building_id, inverse_of: :building, dependent: :destroy

  belongs_to :site, class_name: 'IssLocationSite', foreign_key: :site_id, inverse_of: :buildings
end
