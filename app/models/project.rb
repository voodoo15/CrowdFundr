class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards
  has_many :pledges, through: :rewards
end
