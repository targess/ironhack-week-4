class Concert < ApplicationRecord
	has_many :comments

	validates :artist, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validates :date, presence: true
	validates :price, presence: true
	validates :description, presence: true

	def self.find_between_dates(start_date = DateTime.now.beginning_of_day, end_date = DateTime.now.end_of_day )
		where("date BETWEEN ? AND ?", start_date, end_date).all
	end
end