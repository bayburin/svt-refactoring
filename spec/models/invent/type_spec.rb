require 'rails_helper'

RSpec.describe Invent::Type, type: :model do
  it { is_expected.to have_many(:property_types).dependent(:destroy) }
  it { is_expected.to have_many(:properties).through(:property_types) }
  it { is_expected.to have_many(:items).dependent(:destroy) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:short_description) }
end
