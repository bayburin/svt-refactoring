class IssLocationRoom < ApplicationRecord
  self.primary_key = :room_id

  belongs_to :building, foreign_key: :building_id, class_name: 'IssLocationBuilding', inverse_of: :rooms
end
