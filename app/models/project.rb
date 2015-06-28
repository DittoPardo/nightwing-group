class Project < ActiveRecord::Base
  acts_as_taggable

  has_many :comments
  has_many :rewards
  belongs_to :owner, class_name: 'User'
  has_many :project_contributions
  accepts_nested_attributes_for :rewards, :allow_destroy => true

  validates :name, :owner, presence: true

  mount_uploader :photo, PhotoUploader

  private

  def self.ransackable_scopes(auth_object = nil)
    %i(tagged_with)
  end
end
