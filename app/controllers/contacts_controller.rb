class ContactsController < ApplicationController
  layout 'standard'
  USER_ID, PASSWORD = "arek", "enigmatyczne"
 
   # Require authentication only for edit and delete operation
  before_filter :authenticate, :only => [ :edit, :new ]

  def index
    @contacts = Contact.find(:all)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contactgroups = Contactgroup.find(:all)
    @contact = Contact.new
    @timeperiods = Timeperiod.find(:all)
    @commands =Command.find(:all)
  end

  def edit
    @contact = Contact.find(params[:id])
    @contactgroups = Contactgroup.find(:all)
    @timeperiods = Timeperiod.find(:all)
    @commands =Command.find(:all)
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.save
    redirect_to :action => 'show', :id => @contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
        redirect_to :action => 'show', :id => @contact
    else
        @contactgroups = Contactgroup.find(:all)
        render :action => 'edit'
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
          id == USER_ID && password == PASSWORD
      end
  end


end
