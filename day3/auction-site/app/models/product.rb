class Product < ApplicationRecord
  belongs_to :user
  has_many :bids

  validates :min_bid, presence: true

  def deadline_rearched?
  	Time.now > deadline
  end

  def highest_bid_amount
  	max_bid = bids.max{ |a,b| a.amount <=> b.amount }
  	max_bid ? max_bid.amount : self.min_bid
	#bids.max{ |a,b| a.amount <=> b.amount }.amount || self.min_bid
  end
end
