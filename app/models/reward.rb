class Reward < ActiveRecord::Base
	belongs_to :project
	
	validates :price, :description, presence: true
end
