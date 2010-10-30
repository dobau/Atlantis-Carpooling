class HitchhikesController < ApplicationController
  # GET /hitchhikes
  # GET /hitchhikes.xml
  def index
    @hitchhikes = Hitchhike.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hitchhikes }
    end
  end

  # GET /hitchhikes/1
  # GET /hitchhikes/1.xml
  def show
    @hitchhike = Hitchhike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hitchhike }
    end
  end

  # GET /hitchhikes/new
  # GET /hitchhikes/new.xml
  def new
    @hitchhike = Hitchhike.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hitchhike }
    end
  end

  # GET /hitchhikes/1/edit
  def edit
    @hitchhike = Hitchhike.find(params[:id])
  end

  # POST /hitchhikes
  # POST /hitchhikes.xml
  def create
    @hitchhike = Hitchhike.new(params[:hitchhike])

    respond_to do |format|
      if @hitchhike.save
        format.html { redirect_to(@hitchhike, :notice => 'Hitchhike was successfully created.') }
        format.xml  { render :xml => @hitchhike, :status => :created, :location => @hitchhike }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hitchhike.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hitchhikes/1
  # PUT /hitchhikes/1.xml
  def update
    @hitchhike = Hitchhike.find(params[:id])

    respond_to do |format|
      if @hitchhike.update_attributes(params[:hitchhike])
        format.html { redirect_to(@hitchhike, :notice => 'Hitchhike was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hitchhike.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hitchhikes/1
  # DELETE /hitchhikes/1.xml
  def destroy
    @hitchhike = Hitchhike.find(params[:id])
    @hitchhike.destroy

    respond_to do |format|
      format.html { redirect_to(hitchhikes_url) }
      format.xml  { head :ok }
    end
  end
end
