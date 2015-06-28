class Project < ActiveRecord::Base
  has_many :comments
  has_many :rewards
  belongs_to :owner, class_name: 'User'
  has_many :project_contributions

  validates :name, :owner, presence: true
end
