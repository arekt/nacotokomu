class ContactgroupsController < ApplicationController

  layout 'standard'

  USER_ID, PASSWORD = "arek", "enigmatyczne"
 
   # Require authentication only for edit and delete operation
  before_filter :authenticate, :only => [ :edit, :new , :destroy ]

  def index
    @contactgroups = Contactgroup.find(:all)
  end

  def show
    @contactgroup = Contactgroup.find(params[:id])
  end

  def new
    @contacts = Contact.find(:all)
    @contactgroup = Contactgroup.new
  end

  def edit
    @contactgroup = Contactgroup.find(params[:id])
    @contacts = Contact.find(:all)
  end

  def create
    @contactgroup = Contactgroup.new(params[:contactgroup])
    @contactgroup.save
  end

  def update
    @contactgroup = Contactgroup.find(params[:id])
    if @contactgroup.update_attributes(params[:contactgroup])
        redirect_to :action => 'show', :id => @contactgroup
    else
        @contactgroups = Contactgroup.find(:all)
        @contacts = Contact.find(:all)
        render :action => 'edit'
    end
  end

  def destroy
    Contactgroup.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  private
  def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
          id == USER_ID && password == PASSWORD
      end
  end
end
