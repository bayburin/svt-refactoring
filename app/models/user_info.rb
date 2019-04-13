class UserInfo < ApplicationRecord
  self.primary_key = :tn

  has_many :workplaces, class_name: 'Invent::Workplace', foreign_key: :responsible_tn, inverse_of: :responsible, dependent: :nullify
end
