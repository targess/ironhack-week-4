class UsersController < ApplicationController

	def index
		@my_users = User.all
	end

	def show
		@my_user = User.find_by_id(params[:id])
		@my_products = @my_user.products
		@my_bids = @my_user.bids
		@my_wons = nil
	end

	def new
		@my_user = User.new
	end

	def create
		@my_user = User.new(name: params[:user][:name], email: params[:user][:email])
		if @my_user.save
			redirect_to ("/users/#{@my_user.id}")
		else
			render "new"
		end
	end

	def destroy
		my_user = User.find_by_id(params[:id])
		my_user.destroy
		redirect_to users_path	
	end
end
