class BolsosController < ApplicationController
  before_action :set_bolso, only: [:show, :edit, :update, :destroy]

  # GET /bolsos
  # GET /bolsos.json
  def index
    @bolsos = Bolso.all
  end

  # GET /bolsos/1
  # GET /bolsos/1.json
  def show
  end

  # GET /bolsos/new
  def new
    @bolso = Bolso.new
  end

  # GET /bolsos/1/edit
  def edit
  end

  # POST /bolsos
  # POST /bolsos.json
  def create
    @bolso = Bolso.new(bolso_params)

    respond_to do |format|
      if @bolso.save
        format.html { redirect_to @bolso, notice: 'Bolso was successfully created.' }
        format.json { render :show, status: :created, location: @bolso }
      else
        format.html { render :new }
        format.json { render json: @bolso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bolsos/1
  # PATCH/PUT /bolsos/1.json
  def update
    respond_to do |format|
      if @bolso.update(bolso_params)
        format.html { redirect_to @bolso, notice: 'Bolso was successfully updated.' }
        format.json { render :show, status: :ok, location: @bolso }
      else
        format.html { render :edit }
        format.json { render json: @bolso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolsos/1
  # DELETE /bolsos/1.json
  def destroy
    @bolso.destroy
    respond_to do |format|
      format.html { redirect_to bolsos_url, notice: 'Bolso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolso
      @bolso = Bolso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bolso_params
      params.require(:bolso).permit(:marca, :modelo, :cantidad, :precio)
    end
end
