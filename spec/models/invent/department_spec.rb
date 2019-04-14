require 'rails_helper'

RSpec.describe Invent::Department, type: :model do
  describe 'validations' do
    subject { create(:department) }

    it { is_expected.to have_many(:workplaces).dependent(:destroy) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
