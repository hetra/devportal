class DevdirectoriesController < ApplicationController
  before_action :set_devdirectory, only: [:show, :edit, :update, :destroy]

  # GET /devdirectories
  # GET /devdirectories.json
  def index
    @devdirectories = Devdirectory.all
  end

  # GET /devdirectories/1
  # GET /devdirectories/1.json
  def show
    @devdirectory = Devdirectory.find(params[:id]) # not strong parameters
    @devfiles = @devdirectory.devfiles.all
  end

  # GET /devdirectories/new
  def new
    @devdirectory = Devdirectory.new
  end

  # GET /devdirectories/1/edit
  def edit
  end

  # POST /devdirectories
  # POST /devdirectories.json
  def create
    @devdirectory = Devdirectory.new(devdirectory_params)

    respond_to do |format|
      if @devdirectory.save
        format.html { redirect_to @devdirectory, notice: 'Devdirectory was successfully created.' }
        format.json { render :show, status: :created, location: @devdirectory }
      else
        format.html { render :new }
        format.json { render json: @devdirectory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devdirectories/1
  # PATCH/PUT /devdirectories/1.json
  def update
    respond_to do |format|
      if @devdirectory.update(devdirectory_params)
        format.html { redirect_to @devdirectory, notice: 'Devdirectory was successfully updated.' }
        format.json { render :show, status: :ok, location: @devdirectory }
      else
        format.html { render :edit }
        format.json { render json: @devdirectory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devdirectories/1
  # DELETE /devdirectories/1.json
  def destroy
    @devdirectory.destroy
    respond_to do |format|
      format.html { redirect_to devdirectories_url, notice: 'Devdirectory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devdirectory
      @devdirectory = Devdirectory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devdirectory_params
      params.require(:devdirectory).permit(:name)
    end
end
