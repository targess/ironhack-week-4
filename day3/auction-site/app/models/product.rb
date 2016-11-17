class Product < ApplicationRecord
  belongs_to :user
  has_many :bids

  def deadline_rearched?
  	Time.now > deadline
  end

  def highest_bid
  	bids.max{ |a,b| a.amount <=> b.amount }
  end
end
