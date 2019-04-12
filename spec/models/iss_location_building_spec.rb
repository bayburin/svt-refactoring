require 'rails_helper'

RSpec.describe IssLocationBuilding, type: :model do
  it { is_expected.to have_many(:iss_location_rooms).with_foreign_key(:building_id).dependent(:destroy) }
  it { is_expected.to belong_to(:iss_location_site).with_foreign_key(:site_id) }
end
