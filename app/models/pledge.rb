class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :reward
  has_many :projects, through: :rewards

  validates_associated :user, :reward
  validates :amount, :numericality => { :greater_than => 0 }
  # validates :user_id, uniqueness: { scope: :reward_id }
end
