class Review < ActiveRecord::Base

  belongs_to :product
  belongs_to :user

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5

  def blank_stars
    5 - rating.to_i
  end
end
