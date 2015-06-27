require 'rails_helper'

describe Project do
	it { should belong_to(:user) }
	it { should have_many(:comments) }
	it { should have_many(:rewards) }
	it { should have_and_belong_to_many(:tags) }
end
