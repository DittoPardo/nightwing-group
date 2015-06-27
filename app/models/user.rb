class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :owned_projects, class: 'Project', foreign_key: :owner_id
  has_and_belongs_to_many :backed_projects, class: 'Project', join_table: :backed_projects, foreign_key: :backer_id
  has_many :comments

  validates_presence_of :email, :name
end