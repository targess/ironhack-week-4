class Contact < ApplicationRecord
	validates :name, presence: true
	validates :address, presence: true
	validates :phone, format: { with: /\d{9}/,
    	message: "only phones (9 numbers)" }
    validates :email, format: { with: /\w{1,}@\w{1,}.[a-zA-Z]{2,3}/, 
    	message: "only valid emails" }
end
