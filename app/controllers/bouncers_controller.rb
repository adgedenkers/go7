class BouncersController < ApplicationController
  # GET /bouncers
  # GET /bouncers.xml
  def index
    @bouncers = Bouncer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bouncers }
    end
  end

  # GET /bouncers/1
  # GET /bouncers/1.xml
  def show
    @bouncer = Bouncer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bouncer }
    end
  end

  # GET /bouncers/new
  # GET /bouncers/new.xml
  def new
    @bouncer = Bouncer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bouncer }
    end
  end

  # GET /bouncers/1/edit
  def edit
    @bouncer = Bouncer.find(params[:id])
  end

  # POST /bouncers
  # POST /bouncers.xml
  def create
    @bouncer = Bouncer.new(params[:bouncer])

    respond_to do |format|
      if @bouncer.save
        format.html { redirect_to(@bouncer, :notice => 'Bouncer was successfully created.') }
        format.xml  { render :xml => @bouncer, :status => :created, :location => @bouncer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bouncer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bouncers/1
  # PUT /bouncers/1.xml
  def update
    @bouncer = Bouncer.find(params[:id])

    respond_to do |format|
      if @bouncer.update_attributes(params[:bouncer])
        format.html { redirect_to(@bouncer, :notice => 'Bouncer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bouncer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bouncers/1
  # DELETE /bouncers/1.xml
  def destroy
    @bouncer = Bouncer.find(params[:id])
    @bouncer.destroy

    respond_to do |format|
      format.html { redirect_to(bouncers_url) }
      format.xml  { head :ok }
    end
  end
end