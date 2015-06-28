require 'rails_helper'

describe ProjectContribution do
  it { should belong_to(:user) }
  it { should belong_to(:project) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:project) }
end
