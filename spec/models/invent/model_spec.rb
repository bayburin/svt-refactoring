require 'rails_helper'

RSpec.describe Invent::Model, type: :model do
  it { is_expected.to have_many(:model_property_lists).dependent(:destroy) }
  it { is_expected.to belong_to(:vendor) }
  it { is_expected.to validate_presence_of(:name) }
end
