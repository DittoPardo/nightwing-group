require 'rails_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }
  it { should have_many(:owned_projects).with_foreign_key(:owner_id) }
  it { should have_many(:project_contributions) }
end
