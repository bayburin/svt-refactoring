require 'rails_helper'

RSpec.describe Invent::Workplace, type: :model do
  it { is_expected.to belong_to(:workplace_type) }
  it { is_expected.to belong_to(:department) }
  it { is_expected.to belong_to(:responsible).class_name('UserInfo').with_foreign_key(:responsible_tn).inverse_of(:workplaces).optional }
  it { is_expected.to belong_to(:room).class_name('IssLocationRoom') }
  it { is_expected.to define_enum_for(:status).with_values(confirmed: 0, pending_verification: 1, disapproved: 2, freezed: 3, temporary: 4).with_prefix(:status) }
end
