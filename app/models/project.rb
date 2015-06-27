class Project < ActiveRecord::Base
  has_many :comments
  has_many :rewards
  has_and_belongs_to_many :tags
  belongs_to :owner, class_name: 'User'
  validates_presence_of :owner
  has_many :project_contributions
end
