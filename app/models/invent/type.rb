module Invent
  class Type < ApplicationRecord
    has_many :property_types, dependent: :destroy
    has_many :properties, through: :property_types

    validates :name, :short_description, presence: true
  end
end
