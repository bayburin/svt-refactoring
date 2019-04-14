module Invent
  class Department < ApplicationRecord
    has_many :workplaces, dependent: :destroy

    validates :name, uniqueness: true, presence: true
  end
end
