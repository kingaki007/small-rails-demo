class ContactsController < ApplicationController

def index
    @contacts = Contact.all
  end

def new
end

	def create
	@contact = Contact.new(contact_params)
	
	@contact.save
	
	redirect_to @contact
	
	end

	def show
    @contact = Contact.find(params[:id])
  end
 
  def new
  end

	private
	
  def contact_params
    params.require(:contact).permit(:name, :contactNumber, :email)
  end

end
