require 'rails_helper'

RSpec.describe UserInfo, type: :model do
  it { is_expected.to have_many(:workplaces).class_name('Invent::Workplace').with_foreign_key(:responsible_tn).inverse_of(:responsible).dependent(:nullify) }
end
