class PreguntaAlternativasController < ApplicationController
  before_action :set_pregunta_alternativa, only: [:show, :edit, :update, :destroy]

  # GET /pregunta_alternativas
  # GET /pregunta_alternativas.json
  def index
    @pregunta_alternativas = PreguntaAlternativa.all
  end

  # GET /pregunta_alternativas/1
  # GET /pregunta_alternativas/1.json
  def show
  end

  # GET /pregunta_alternativas/new
  def new
    @pregunta_alternativa = PreguntaAlternativa.new
  end

  # GET /pregunta_alternativas/1/edit
  def edit
  end

  # POST /pregunta_alternativas
  # POST /pregunta_alternativas.json
  def create
    @pregunta_alternativa = PreguntaAlternativa.new(pregunta_alternativa_params)

    respond_to do |format|
      if @pregunta_alternativa.save
        format.html { redirect_to @pregunta_alternativa, notice: 'Pregunta la pregunta fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @pregunta_alternativa }
      else
        format.html { render :new }
        format.json { render json: @pregunta_alternativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregunta_alternativas/1
  # PATCH/PUT /pregunta_alternativas/1.json
  def update
    respond_to do |format|
      if @pregunta_alternativa.update(pregunta_alternativa_params)
        format.html { redirect_to @pregunta_alternativa, notice: 'Pregunta la pregunta fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @pregunta_alternativa }
      else
        format.html { render :edit }
        format.json { render json: @pregunta_alternativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregunta_alternativas/1
  # DELETE /pregunta_alternativas/1.json
  def destroy
    @pregunta_alternativa.destroy
    respond_to do |format|
      format.html { redirect_to pregunta_alternativas_url, notice: 'Pregunta la pregunta fue destruida exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta_alternativa
      @pregunta_alternativa = PreguntaAlternativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregunta_alternativa_params
      params.require(:pregunta_alternativa).permit(:nombre, :pregunta, :respuesta1, :respuesta2, :respuesta3, :respuesta4, :verdadera, :explicacion)
    end
end
