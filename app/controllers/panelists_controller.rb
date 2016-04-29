class PanelistsController < ApplicationController
  before_action :set_panelist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new,:create]

  # GET /panelists
  # GET /panelists.json
  def index
    @panelists = Panelist.all
    authorize @panelists
  end

  # GET /panelists/1
  # GET /panelists/1.json
  def show
    authorize @panelist
  end

  # GET /panelists/new
  def new
    @panelist = Panelist.new
  end

  # GET /panelists/1/edit
  def edit
  end

  # POST /panelists
  # POST /panelists.json
  def create
    @panelist = Panelist.new(panelist_params)

    respond_to do |format|
      if @panelist.save
        format.html { redirect_to @panelist, notice: 'Panelist was successfully created.' }
        format.json { render :show, status: :created, location: @panelist }
      else
        format.html { render :new }
        format.json { render json: @panelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panelists/1
  # PATCH/PUT /panelists/1.json
  def update
    respond_to do |format|
      if @panelist.update(panelist_params)
        format.html { redirect_to @panelist, notice: 'Panelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @panelist }
      else
        format.html { render :edit }
        format.json { render json: @panelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panelists/1
  # DELETE /panelists/1.json
  def destroy
    authorize @panelist
    @panelist.destroy
    respond_to do |format|
      format.html { redirect_to panelists_url, notice: 'Panelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panelist
      @panelist = Panelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panelist_params
      params.require(:panelist).permit(:article, :user_id)
    end
  end
