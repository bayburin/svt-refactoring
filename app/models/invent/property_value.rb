module Invent
  class PropertyValue < ApplicationRecord
    belongs_to :property
    belongs_to :item
    belongs_to :property_list, optional: true
  end
end
