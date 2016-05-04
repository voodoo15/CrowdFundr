class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :rewards
  has_many :pledges, through: :rewards

  def count_backers
    return self.pledges.count
  end

  def amount_pledged
    return self.pledges.sum(:amount)
  end

  def ended?
    DateTime.now.to_date > self.end_date
  end

  def days_remaining
  end
end
