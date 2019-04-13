require 'rails_helper'

RSpec.describe Invent::Type, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:short_description) }
end
