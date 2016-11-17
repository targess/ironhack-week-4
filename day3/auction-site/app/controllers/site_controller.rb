class SiteController < ApplicationController
	def index
		@my_products = Product.all
	end

	def details
		@my_product = Product.find_by_id(params[:id])
		@bids = @my_product.bids.all
		@my_bid = Bid.new
	end
end
