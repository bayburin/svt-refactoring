module Invent
  class ModelPropertyList < ApplicationRecord
    belongs_to :model
    belongs_to :property
    belongs_to :property_list
  end
end
