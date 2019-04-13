module Invent
  class Type < ApplicationRecord
    validates :name, :short_description, presence: true
  end
end
