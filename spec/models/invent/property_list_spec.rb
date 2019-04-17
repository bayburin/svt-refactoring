require 'rails_helper'

RSpec.describe Invent::PropertyList, type: :model do
  it { is_expected.to have_many(:model_property_lists).dependent(:destroy) }
  it { is_expected.to belong_to(:property) }
end
