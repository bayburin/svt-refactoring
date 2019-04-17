require 'rails_helper'

RSpec.describe Invent::ModelPropertyList, type: :model do
  it { is_expected.to belong_to(:model) }
  it { is_expected.to belong_to(:property) }
  it { is_expected.to belong_to(:property_list) }
end
