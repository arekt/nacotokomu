class HostsController < ApplicationController
  def index
    @hosts = Host.find(:all)
  end

  def show
    if params[:id].nil?
        redirect_to :action => 'index'
    end
    @host = Host.find(params[:id])
  end

  def new
    @commands = Command.find(:all)
    @contactgroups = Contactgroup.find(:all)
    @host = Host.new
    @timeperiods = Timeperiod.find(:all)
    @hostgroups = Hostgroup.find(:all)
    @configurations = Configuration.find(:all) 
  end

  def edit
    @host = Host.find(params[:id])
    @contactgroups = Contactgroup.find(:all)
    @commands = Command.find(:all)
    @timeperiods = Timeperiod.find(:all)
    @hostgroups = Hostgroup.find(:all)
    @configurations = Configuration.find(:all)
  end

  def create
    @host = Host.new(params[:host])
    @host.save
  end

  def update
    @host = Host.find(params[:id])
    if @host.update_attributes(params[:host])
        redirect_to :action => 'show', :id => @host
    else
        @contactgroups = Contactgroup.find(:all)
        @commands = Command.find(:all)
        render :action => 'edit'
    end
  end

  def destroy
    Host.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end
