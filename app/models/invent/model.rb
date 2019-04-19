module Invent
  class Model < ApplicationRecord
    has_many :model_property_lists, dependent: :destroy

    belongs_to :vendor
    belongs_to :type

    validates :name, presence: true
  end
end
