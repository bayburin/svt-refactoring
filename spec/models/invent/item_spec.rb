require 'rails_helper'

RSpec.describe Invent::Item, type: :model do
  it { is_expected.to belong_to(:type) }
  it { is_expected.to belong_to(:workplace).optional }
  it { is_expected.to belong_to(:model).optional }
end
