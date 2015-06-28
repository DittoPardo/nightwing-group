require 'rails_helper'

describe Project do
	it { should belong_to(:owner) }
	it { should have_many(:comments) }
	it { should have_many(:rewards) }
  it { should have_many(:project_contributions) }
  it { should validate_presence_of(:owner) }
  it { should validate_presence_of(:name) }
end
