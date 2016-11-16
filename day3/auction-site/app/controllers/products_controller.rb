class ProductsController < ApplicationController
	def index
		@my_user = User.find_by_id(params[:user_id])
		@my_products = @my_user.products
	end

	def show
		@my_product = Product.find_by_id(params[:id])
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
			deadline: params[:product][:deadline])

		if @my_user.save
			redirect_to("/users/#{@my_user.id}/products")
		else
			render "new"
		end
	end
end
