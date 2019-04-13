module Invent
  class PropertyType < ApplicationRecord
    belongs_to :type
    belongs_to :property
  end
end
