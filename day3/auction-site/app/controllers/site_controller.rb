class SiteController < ApplicationController
	def index
		@my_products = Product.all
	end
end
