class ConcertsController < ApplicationController
	def index
		@my_concerts_today = Concert.find_between_dates
		@my_concerts_this_month = Concert.find_between_dates(Date.tomorrow, Time.now.end_of_month)
	end

	def new
		@my_concert = Concert.new
	end

	def create
		@my_concert = Concert.new(entry_params)

		if @my_concert.save
			redirect_to action: :index
		else
			render "new"
		end
	end

	def show
		@my_concert = Concert.find_by_id(params[:id])
	end

	def search
		@my_concerts_today = Concert.where('price < ?', params[:search])
		@my_concerts_this_month = Concert.find_between_dates(Date.tomorrow, Time.now.end_of_month)

		render "index"
	end

	def popular
		@my_concerts = Concert.all.sort_by{|concert| concert.comments.size}.reverse[0..10]
	end


	private

	def entry_params
		params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
	end
end
