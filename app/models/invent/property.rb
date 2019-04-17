module Invent
  class Property < ApplicationRecord
    has_many :property_types, dependent: :destroy
    has_many :types, through: :property_types
    has_many :property_lists, dependent: :destroy

    validates :name, :short_description, presence: true
  end
end
