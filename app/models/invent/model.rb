module Invent
  class Model < ApplicationRecord
    has_many :model_property_lists, dependent: :destroy

    belongs_to :vendor

    validates :name, presence: true
  end
end
