class Project < ActiveRecord::Base
  has_many :comments
  has_many :rewards
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :backers, class: 'User', join_table: :backed_projects, foreign_key: :backed_project_id
  belongs_to :owner, class: 'User'
end
