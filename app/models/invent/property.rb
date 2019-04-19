module Invent
  class Property < ApplicationRecord
    has_many :property_types, dependent: :destroy
    has_many :types, through: :property_types
    has_many :property_lists, dependent: :destroy
    has_many :property_values, dependent: :destroy
    has_many :model_property_lists, dependent: :destroy

    validates :name, :short_description, presence: true

    enum property_type: { string: 1, list: 2, list_plus: 3, date: 4 }, _prefix: :type
  end
end
