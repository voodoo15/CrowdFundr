class Category < ActiveRecord::Base
  has_many :projects

  # validates :category, presence: true
end
