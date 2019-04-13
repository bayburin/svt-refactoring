module Invent
  class Model < ApplicationRecord
    belongs_to :vendor

    validates :name, presence: true
  end
end
