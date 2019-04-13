require 'rails_helper'

RSpec.describe IssLocationSite, type: :model do
  it { is_expected.to have_many(:buildings).class_name('IssLocationBuilding').with_foreign_key(:site_id).inverse_of(:site).dependent(:destroy) }
end
