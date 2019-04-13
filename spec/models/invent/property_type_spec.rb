require 'rails_helper'

RSpec.describe Invent::PropertyType, type: :model do
  it { is_expected.to belong_to(:type) }
  it { is_expected.to belong_to(:property) }
end
