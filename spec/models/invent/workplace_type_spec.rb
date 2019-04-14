require 'rails_helper'

RSpec.describe Invent::WorkplaceType, type: :model do
  it { is_expected.to have_many(:workplaces).dependent(:destroy) }
  it { is_expected.to validate_presence_of(:name) }
end
