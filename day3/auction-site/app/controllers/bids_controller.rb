class BidsController < ApplicationController
	def create
		my_user 	= User.find_by(email: params[:email])
		@my_product = Product.find_by(params[:product_id])
		@bids 		= @my_product.bids
		@my_bid 	= Bid.new(amount: params[:amount], product_id: params[:product_id])

		if my_user && (@my_bid.user_id = my_user.id) && @my_bid.save
			redirect_to '/'
		else
			render "products/details"
		end
	end
end
