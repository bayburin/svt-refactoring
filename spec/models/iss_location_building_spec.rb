require 'rails_helper'

RSpec.describe IssLocationBuilding, type: :model do
  it { is_expected.to have_many(:rooms).class_name('IssLocationRoom').with_foreign_key(:building_id).inverse_of(:building).dependent(:destroy) }
  it { is_expected.to belong_to(:site).class_name('IssLocationSite').inverse_of(:buildings).with_foreign_key(:site_id) }
end
