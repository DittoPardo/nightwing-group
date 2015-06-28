class ProjectContribution < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user, :project, presence: true
end
