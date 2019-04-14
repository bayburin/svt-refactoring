module Invent
  class Workplace < ApplicationRecord
    belongs_to :workplace_type
    belongs_to :department
    belongs_to :responsible, class_name: 'UserInfo', foreign_key: :responsible_tn, inverse_of: :workplaces, optional: true
    belongs_to :room, class_name: 'IssLocationRoom'

    enum status: { confirmed: 0, pending_verification: 1, disapproved: 2, freezed: 3, temporary: 4 }, _prefix: :status
  end
end
