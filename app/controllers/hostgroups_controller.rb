class HostgroupsController < ApplicationController
  # GET /hostgroups
  # GET /hostgroups.xml
  def index
    @hostgroups = Hostgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hostgroups }
    end
  end

  # GET /hostgroups/1
  # GET /hostgroups/1.xml
  def show
    @hostgroup = Hostgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hostgroup }
    end
  end

  # GET /hostgroups/new
  # GET /hostgroups/new.xml
  def new
    @hostgroup = Hostgroup.new
    @hosts = Host.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hostgroup }
    end
  end

  # GET /hostgroups/1/edit
  def edit
    @hostgroup = Hostgroup.find(params[:id])
    @hosts = Host.find(:all)
  end

  # POST /hostgroups
  # POST /hostgroups.xml
  def create
    @hostgroup = Hostgroup.new(params[:hostgroup])

    respond_to do |format|
      if @hostgroup.save
        flash[:notice] = 'Hostgroup was successfully created.'
        format.html { redirect_to(@hostgroup) }
        format.xml  { render :xml => @hostgroup, :status => :created, :location => @hostgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hostgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hostgroups/1
  # PUT /hostgroups/1.xml
  def update
    @hostgroup = Hostgroup.find(params[:id])

    respond_to do |format|
      if @hostgroup.update_attributes(params[:hostgroup])
        flash[:notice] = 'Hostgroup was successfully updated.'
        format.html { redirect_to(@hostgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hostgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hostgroups/1
  # DELETE /hostgroups/1.xml
  def destroy
    @hostgroup = Hostgroup.find(params[:id])
    @hostgroup.destroy

    respond_to do |format|
      format.html { redirect_to(hostgroups_url) }
      format.xml  { head :ok }
    end
  end
end
