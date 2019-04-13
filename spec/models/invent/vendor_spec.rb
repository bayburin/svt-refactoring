require 'rails_helper'

RSpec.describe Invent::Vendor, type: :model do
  it { is_expected.to have_many(:models) }
  it { is_expected.to validate_presence_of(:name) }
end
