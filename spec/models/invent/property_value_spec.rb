require 'rails_helper'

RSpec.describe Invent::PropertyValue, type: :model do
  it { is_expected.to belong_to(:property) }
  it { is_expected.to belong_to(:item) }
  it { is_expected.to belong_to(:property_list).optional }
end
