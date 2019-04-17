require 'rails_helper'

RSpec.describe Invent::Property, type: :model do
  it { is_expected.to have_many(:property_types).dependent(:destroy) }
  it { is_expected.to have_many(:types).through(:property_types) }
  it { is_expected.to have_many(:property_lists).dependent(:destroy) }
  it { is_expected.to have_many(:property_values).dependent(:destroy) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:short_description) }
end
