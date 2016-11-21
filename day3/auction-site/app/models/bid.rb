class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validate :amount_cannot_be_under_product_min, :amount_cannot_be_under_highest_bid, :user_cannot_bid_their_own_product
  validate :bid_time_expired

  def bid_time_expired
    if Time.now > product.deadline
      errors.add(:product, "Can´t bid to an expired product")
    end
  end

  def amount_cannot_be_under_product_min
  	if amount < product.min_bid
  		errors.add(:amount, "can't be under min starter product bid")
  	end
  end

  def amount_cannot_be_under_highest_bid
  	if amount <= product.highest_bid_amount
  		errors.add(:amount, "can't be under or equal to highest bid")
  	end
  end

  def user_cannot_bid_their_own_product
  	if product.user == user
  		errors.add(:user, "user can´t bid their own product")
  	end
  end

  def winner_bid?
    (self.product.highest_bid_amount == self.amount) if self.product.deadline_rearched?
  end

end