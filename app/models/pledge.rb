class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :reward
  belongs_to :project, through :reward 
end
