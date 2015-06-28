class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :project, presence: true
  validates_presence_of :text
end
