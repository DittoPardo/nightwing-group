require 'rails_helper'

describe Project do
	it { should belong_to(:owner) }
	it { should have_many(:comments) }
	it { should have_many(:rewards) }
	it { should have_and_belong_to_many(:tags) }
  it { should have_many(:project_contributions).with_foreign_key(:user_id) }
end
