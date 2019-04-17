require 'rails_helper'

RSpec.describe Invent::PropertyList, type: :model do
  it { is_expected.to belong_to(:property) }
end
