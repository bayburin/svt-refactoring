require 'rails_helper'

RSpec.describe Invent::Workplace, type: :model do
  it { is_expected.to belong_to(:workplace_type) }
  it { is_expected.to belong_to(:department) }
  it { is_expected.to belong_to(:responsible).class_name('UserInfo').with_foreign_key(:responsible_tn).inverse_of(:workplaces).optional }
  it { is_expected.to belong_to(:room).class_name('IssLocationRoom') }
end
