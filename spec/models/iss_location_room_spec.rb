require 'rails_helper'

RSpec.describe IssLocationRoom, type: :model do
  it { is_expected.to belong_to(:iss_location_building).with_foreign_key(:building_id) }
end
