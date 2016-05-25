class PreguntaLikertsController < ApplicationController
  before_action :set_pregunta_likert, only: [:show, :edit, :update, :destroy]

  # GET /pregunta_likerts
  # GET /pregunta_likerts.json
  def index
    @pregunta_likerts = PreguntaLikert.all
  end

  # GET /pregunta_likerts/1
  # GET /pregunta_likerts/1.json
  def show
  end

  # GET /pregunta_likerts/new
  def new
    @pregunta_likert = PreguntaLikert.new
  end

  # GET /pregunta_likerts/1/edit
  def edit
  end

  # POST /pregunta_likerts
  # POST /pregunta_likerts.json
  def create
    @pregunta_likert = PreguntaLikert.new(pregunta_likert_params)

    respond_to do |format|
      if @pregunta_likert.save
        format.html { redirect_to @pregunta_likert, notice: 'Pregunta la pregunta fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @pregunta_likert }
      else
        format.html { render :new }
        format.json { render json: @pregunta_likert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregunta_likerts/1
  # PATCH/PUT /pregunta_likerts/1.json
  def update
    respond_to do |format|
      if @pregunta_likert.update(pregunta_likert_params)
        format.html { redirect_to @pregunta_likert, notice: 'Pregunta la pregunta fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @pregunta_likert }
      else
        format.html { render :edit }
        format.json { render json: @pregunta_likert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregunta_likerts/1
  # DELETE /pregunta_likerts/1.json
  def destroy
    @pregunta_likert.destroy
    respond_to do |format|
      format.html { redirect_to pregunta_likerts_url, notice: 'Pregunta la pregunta fue destruida exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta_likert
      @pregunta_likert = PreguntaLikert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregunta_likert_params
      params.require(:pregunta_likert).permit(:nombre, :pregunta)
    end
end
