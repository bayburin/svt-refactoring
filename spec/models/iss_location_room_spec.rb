require 'rails_helper'

RSpec.describe IssLocationRoom, type: :model do
  it { is_expected.to belong_to(:building).class_name('IssLocationBuilding').with_foreign_key(:building_id).inverse_of(:rooms) }
end
