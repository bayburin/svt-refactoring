module Invent
  class Vendor < ApplicationRecord
    has_many :models, dependent: :destroy

    validates :name, presence: true
  end
end
