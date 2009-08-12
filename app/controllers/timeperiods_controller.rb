class TimeperiodsController < ApplicationController
  # GET /timeperiods
  # GET /timeperiods.xml
  def index
    @timeperiods = Timeperiod.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @timeperiods }
    end
  end

  # GET /timeperiods/1
  # GET /timeperiods/1.xml
  def show
    @timeperiod = Timeperiod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timeperiod }
    end
  end

  # GET /timeperiods/new
  # GET /timeperiods/new.xml
  def new
    @timeperiod = Timeperiod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timeperiod }
    end
  end

  # GET /timeperiods/1/edit
  def edit
    @timeperiod = Timeperiod.find(params[:id])
  end

  # POST /timeperiods
  # POST /timeperiods.xml
  def create
    @timeperiod = Timeperiod.new(params[:timeperiod])

    respond_to do |format|
      if @timeperiod.save
        flash[:notice] = 'Timeperiod was successfully created.'
        format.html { redirect_to(@timeperiod) }
        format.xml  { render :xml => @timeperiod, :status => :created, :location => @timeperiod }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timeperiod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timeperiods/1
  # PUT /timeperiods/1.xml
  def update
    @timeperiod = Timeperiod.find(params[:id])

    respond_to do |format|
      if @timeperiod.update_attributes(params[:timeperiod])
        flash[:notice] = 'Timeperiod was successfully updated.'
        format.html { redirect_to(@timeperiod) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timeperiod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timeperiods/1
  # DELETE /timeperiods/1.xml
  def destroy
    @timeperiod = Timeperiod.find(params[:id])
    @timeperiod.destroy

    respond_to do |format|
      format.html { redirect_to(timeperiods_url) }
      format.xml  { head :ok }
    end
  end
end
