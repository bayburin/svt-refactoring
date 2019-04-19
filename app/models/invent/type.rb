module Invent
  class Type < ApplicationRecord
    has_many :property_types, dependent: :destroy
    has_many :properties, through: :property_types
    has_many :items, dependent: :destroy
    has_many :models, dependent: :destroy

    validates :name, :short_description, presence: true
  end
end
