class VgcsController < ApplicationController
  # GET /vgcs
  # GET /vgcs.json
  def index
    @vgcs = Vgc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vgcs }
    end
  end

  # GET /vgcs/1
  # GET /vgcs/1.json
  def show
    @vgc = Vgc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vgc }
    end
  end

  # GET /vgcs/new
  # GET /vgcs/new.json
  def new
    @vgc = Vgc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vgc }
    end
  end

  # GET /vgcs/1/edit
  def edit
    @vgc = Vgc.find(params[:id])
  end

  # POST /vgcs
  # POST /vgcs.json
  def create
    @vgc = Vgc.new(params[:vgc])

    respond_to do |format|
      if @vgc.save
        format.html { redirect_to @vgc, notice: 'Vgc was successfully created.' }
        format.json { render json: @vgc, status: :created, location: @vgc }
      else
        format.html { render action: "new" }
        format.json { render json: @vgc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vgcs/1
  # PUT /vgcs/1.json
  def update
    @vgc = Vgc.find(params[:id])

    respond_to do |format|
      if @vgc.update_attributes(params[:vgc])
        format.html { redirect_to @vgc, notice: 'Vgc was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @vgc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vgcs/1
  # DELETE /vgcs/1.json
  def destroy
    @vgc = Vgc.find(params[:id])
    @vgc.destroy

    respond_to do |format|
      format.html { redirect_to vgcs_url }
      format.json { head :ok }
    end
  end
end
