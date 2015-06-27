require 'rails_helper'

describe Comment do
  it { should validate_presence_of(:project) }
  it { should belong_to(:project) }
end
