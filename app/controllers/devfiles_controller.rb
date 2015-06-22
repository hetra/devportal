class DevfilesController < ApplicationController
  before_action :set_devfile, only: [:show, :edit, :update, :destroy]

  # GET /devfiles
  # GET /devfiles.json
  def index
    @devfiles = Devfile.all
  end

  # GET /devfiles/1
  # GET /devfiles/1.json
  def show
  end

  # GET /devfiles/new
  def new
    @devfile = Devfile.new
  end

  # GET /devfiles/1/edit
  def edit
  end

  # POST /devfiles
  # POST /devfiles.json
  def create
    @devfile = Devfile.new(devfile_params)

    respond_to do |format|
      if @devfile.save
        format.html { redirect_to @devfile, notice: 'Devfile was successfully created.' }
        format.json { render :show, status: :created, location: @devfile }
      else
        format.html { render :new }
        format.json { render json: @devfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devfiles/1
  # PATCH/PUT /devfiles/1.json
  def update
    respond_to do |format|
      if @devfile.update(devfile_params)
        format.html { redirect_to @devfile, notice: 'Devfile was successfully updated.' }
        format.json { render :show, status: :ok, location: @devfile }
      else
        format.html { render :edit }
        format.json { render json: @devfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devfiles/1
  # DELETE /devfiles/1.json
  def destroy
    @devfile.destroy
    respond_to do |format|
      format.html { redirect_to devfiles_url, notice: 'Devfile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devfile
      @devfile = Devfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devfile_params
      params.require(:devfile).permit(:name, :extension, :contents)
    end
end
