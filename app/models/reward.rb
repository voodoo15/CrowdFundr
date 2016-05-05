class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :pledges

  validates :title, :description, presence: true
  validates :amount, :numericality => { :greater_than => 0 }
  validates_associated :project
end
