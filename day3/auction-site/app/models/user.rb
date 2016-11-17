class User < ApplicationRecord
	has_many :products
	has_many :bids

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
