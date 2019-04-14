module Invent
  class WorkplaceType < ApplicationRecord
    has_many :workplaces, dependent: :destroy

    validates :name, presence: true
  end
end
