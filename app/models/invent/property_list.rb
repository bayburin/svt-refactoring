module Invent
  class PropertyList < ApplicationRecord
    has_many :model_property_lists, dependent: :destroy

    belongs_to :property
  end
end
