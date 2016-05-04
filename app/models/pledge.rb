class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :reward
  has_many :projects, through: :rewards 
end
