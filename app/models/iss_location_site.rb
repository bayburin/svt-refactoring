class IssLocationSite < ApplicationRecord
  self.primary_key = :site_id

  has_many :buildings, class_name: 'IssLocationBuilding', foreign_key: :site_id, inverse_of: :site, dependent: :destroy

  accepts_nested_attributes_for :buildings
end
