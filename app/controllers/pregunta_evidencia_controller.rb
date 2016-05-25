class PreguntaEvidenciaController < ApplicationController
  before_action :set_pregunta_evidencium, only: [:show, :edit, :update, :destroy]

  # GET /pregunta_evidencia
  # GET /pregunta_evidencia.json
  def index
    @pregunta_evidencia = PreguntaEvidencium.all
  end

  # GET /pregunta_evidencia/1
  # GET /pregunta_evidencia/1.json
  def show
  end

  # GET /pregunta_evidencia/new
  def new
    @pregunta_evidencium = PreguntaEvidencium.new
  end

  # GET /pregunta_evidencia/1/edit
  def edit
  end

  # POST /pregunta_evidencia
  # POST /pregunta_evidencia.json
  def create
    @pregunta_evidencium = PreguntaEvidencium.new(pregunta_evidencium_params)

    respond_to do |format|
      if @pregunta_evidencium.save
        format.html { redirect_to @pregunta_evidencium, notice: 'Pregunta la pregunta fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @pregunta_evidencium }
      else
        format.html { render :new }
        format.json { render json: @pregunta_evidencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregunta_evidencia/1
  # PATCH/PUT /pregunta_evidencia/1.json
  def update
    respond_to do |format|
      if @pregunta_evidencium.update(pregunta_evidencium_params)
        format.html { redirect_to @pregunta_evidencium, notice: 'Pregunta la pregunta fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @pregunta_evidencium }
      else
        format.html { render :edit }
        format.json { render json: @pregunta_evidencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregunta_evidencia/1
  # DELETE /pregunta_evidencia/1.json
  def destroy
    @pregunta_evidencium.destroy
    respond_to do |format|
      format.html { redirect_to pregunta_evidencia_url, notice: 'Pregunta la pregunta fue destruida exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta_evidencium
      @pregunta_evidencium = PreguntaEvidencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregunta_evidencium_params
      params.require(:pregunta_evidencium).permit(:nombre, :pregunta)
    end
end
