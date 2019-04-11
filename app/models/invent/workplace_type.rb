module Invent
  class WorkplaceType < ApplicationRecord
    validates :name, presence: true
  end
end
