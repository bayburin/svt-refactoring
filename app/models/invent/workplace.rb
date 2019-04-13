module Invent
  class Workplace < ApplicationRecord
    belongs_to :workplace_type
    belongs_to :department
    belongs_to :responsible, class_name: 'UserInfo', foreign_key: :responsible_tn, inverse_of: :workplaces, optional: true
    belongs_to :room, class_name: 'IssLocationRoom'
  end
end
