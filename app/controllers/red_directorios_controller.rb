class RedDirectoriosController < ApplicationController
  before_action :set_red_directorio, only: [:show, :edit, :update, :destroy]

  # GET /red_directorios
  # GET /red_directorios.json
  def index
    @red_directorios = RedDirectorio.all
  end

  # GET /red_directorios/1
  # GET /red_directorios/1.json
  def show
  end

  # GET /red_directorios/new
  def new
    @red_directorio = RedDirectorio.new
  end

  # GET /red_directorios/1/edit
  def edit
  end

  # POST /red_directorios
  # POST /red_directorios.json
  def create
    @red_directorio = RedDirectorio.new(red_directorio_params)

    respond_to do |format|
      if @red_directorio.save
        format.html { redirect_to @red_directorio, notice: 'Red directorio was successfully created.' }
        format.json { render :show, status: :created, location: @red_directorio }
      else
        format.html { render :new }
        format.json { render json: @red_directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /red_directorios/1
  # PATCH/PUT /red_directorios/1.json
  def update
    respond_to do |format|
      if @red_directorio.update(red_directorio_params)
        format.html { redirect_to @red_directorio, notice: 'Red directorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @red_directorio }
      else
        format.html { render :edit }
        format.json { render json: @red_directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /red_directorios/1
  # DELETE /red_directorios/1.json
  def destroy
    @red_directorio.destroy
    respond_to do |format|
      format.html { redirect_to red_directorios_url, notice: 'Red directorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_red_directorio
      @red_directorio = RedDirectorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def red_directorio_params
      params.require(:red_directorio).permit(:directorio_id, :red, :link)
    end
end
