class Project < ActiveRecord::Base
	has_many :comments
	has_many :rewards
	has_and_belongs_to_many :tags
	belongs_to :user
end
