require 'rails_helper'

describe Reward do
  it { should belong_to(:project) }
end