module Invent
  class Item < ApplicationRecord
    has_many :property_values, dependent: :destroy

    belongs_to :type
    belongs_to :workplace, optional: true
    belongs_to :model, optional: true

    enum status: { waiting_take: 1, waiting_bring: 2, prepared_to_swap: 3, in_stock: 4, in_workplace: 5, waiting_write_off: 6, written_off: 7 }, _prefix: :status
    enum priority: { default: 1, high: 2 }, _prefix: :priority
  end
end
