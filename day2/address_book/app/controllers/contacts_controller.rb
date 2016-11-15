class ContactsController < ApplicationController
	def index

		if params[:search].present?
			@contacts = Contact.where("name LIKE ?", "%#{params[:search]}%") 

		else
			@contacts = Contact.order(name: :asc)
		end
	end

	def new
	end

	def create
		contact = Contact.new(	name: 	 params[:contact][:name],
      							address: params[:contact][:address],
      							phone: 	 params[:contact][:phone],
      							email: 	 params[:contact][:email])

		contact.save
		redirect_to "/contacts"
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def edit
		@contact = Contact.find(params[:id])
		@contact.status = "favorite"
		@contact.save
		redirect_to "/contacts"
	end
end
