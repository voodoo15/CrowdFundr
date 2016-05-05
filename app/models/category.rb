class Category < ActiveRecord::Base
  has_many :projects

  validates :description, presence: true
end
