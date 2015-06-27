require 'rails_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should have_many(:owned_projects).with_foreign_key('owner_id') }
end
