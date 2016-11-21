class ProductsController < ApplicationController
	def index
		@my_products = Product.all
	end

	def show
		@my_product = Product.find_by_id(params[:id])
		@my_user = @my_product.user
	end

	def new
		@my_user = User.find_by_id(params[:user_id])
		@my_product = @my_user.products.new
	end

	def create
		@my_user = User.find_by_id(params[:user_id])
		@my_user.products.new(
			title: params[:product][:title],
			description: params[:product][:description],
			deadline: params[:product][:deadline], min_bid: params[:product][:min_bid])

		if @my_user.save
			redirect_to("/users/#{@my_user.id}/products")
		else
			@my_product = @my_user.products.new
			render "new"
		end
	end

	def destroy
		my_user = User.find_by_id(params[:user_id])
		my_product = my_user.products.find_by_id(params[:id])
		my_product.destroy

		redirect_to user_products_path(my_user)
	end

	def details
		@my_product = Product.find_by_id(params[:id])
		@bids = @my_product.bids.all
		@my_bid = Bid.new
	end
end
