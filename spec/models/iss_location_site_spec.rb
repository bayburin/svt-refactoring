require 'rails_helper'

RSpec.describe IssLocationSite, type: :model do
  it { is_expected.to have_many(:iss_location_buildings).with_foreign_key(:site_id).dependent(:destroy) }
end
