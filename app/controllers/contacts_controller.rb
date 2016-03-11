class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      #redirect_to contact_path, notice: "Your messages has been sent."
      redirect_to :controller => 'home', :action => 'index'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
