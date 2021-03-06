class ContactsController < ApplicationController
	def index
     @contacts = Contact.all 
 end

 def show
 	 @contact = Contact.find(params[:id])
 end

 def new
 end

 def create
 	 @contact = Contact.new(contact_whitelisted)

 	 @contact.save
 	 redirect_to @contact
 end

 def destroy
 	@contact = Contact.find(params[:id])
 	@contact.destroy
 	redirect_to @contact
 end

 def edit
 	@contact = Contact.find(params[:id])
 	@contact.edit
 	redirect_to @contact 
 end

 	
 private
 def contact_whitelisted
 	 params.require(:contact).permit(:name, :subject, :message)
 	 
 
 end
end

