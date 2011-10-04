class DiveCentersController < ApplicationController
  #before_filter :authenticate_user!, :except => [:new, :create]
  load_and_authorize_resource
  
  # GET /dive_centers
  # GET /dive_centers.json
  def index
    @dive_centers = DiveCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dive_centers }
    end
  end

  # GET /dive_centers/1
  # GET /dive_centers/1.json
  def show
    @dive_center = DiveCenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dive_center }
    end
  end

  # GET /dive_centers/new
  # GET /dive_centers/new.json
  def new
    @dive_center = DiveCenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dive_center }
    end
  end

  # GET /dive_centers/1/edit
  def edit
    @dive_center = DiveCenter.find(params[:id])
  end

  # POST /dive_centers
  # POST /dive_centers.json
  def create
    @dive_center = DiveCenter.new(params[:dive_center])

    respond_to do |format|
      if @dive_center.save
        format.html { redirect_to root_path, notice: 'Your dive center was successfully added.' }
        format.json { render json: @dive_center, status: :created, location: @dive_center }
      else
        format.html { render action: "new" }
        format.json { render json: @dive_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dive_centers/1
  # PUT /dive_centers/1.json
  def update
    @dive_center = DiveCenter.find(params[:id])

    respond_to do |format|
      if @dive_center.update_attributes(params[:dive_center])
        format.html { redirect_to @dive_center, notice: 'Your dive center was successfully added.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dive_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dive_centers/1
  # DELETE /dive_centers/1.json
  def destroy
    @dive_center = DiveCenter.find(params[:id])
    @dive_center.destroy

    respond_to do |format|
      format.html { redirect_to dive_centers_url }
      format.json { head :ok }
    end
  end
end
