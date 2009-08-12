class CommandsController < ApplicationController

  def index
    @commands = Command.find(:all)
  end

  def show
    @command = Command.find(params[:id])
  end

  def new
    @command = Command.new
  end

  def edit
    @command = Command.find(params[:id])
  end

  def create
    @command = Command.new(params[:command])
    @command.save
  end

  def update
    @command = Command.find(params[:id])
    if @command.update_attributes(params[:command])
        redirect_to :action => 'show', :id => @command
    else
        render :action => 'edit'
    end
  end

  def destroy
    Command.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
          id == USER_ID && password == PASSWORD
      end
  end


end
