class PreguntaDicotomicasController < ApplicationController
  before_action :set_pregunta_dicotomica, only: [:show, :edit, :update, :destroy]

  # GET /pregunta_dicotomicas
  # GET /pregunta_dicotomicas.json
  def index
    @pregunta_dicotomicas = PreguntaDicotomica.all
  end

  # GET /pregunta_dicotomicas/1
  # GET /pregunta_dicotomicas/1.json
  def show
  end

  # GET /pregunta_dicotomicas/new
  def new
    @pregunta_dicotomica = PreguntaDicotomica.new
  end

  # GET /pregunta_dicotomicas/1/edit
  def edit
  end

  # POST /pregunta_dicotomicas
  # POST /pregunta_dicotomicas.json
  def create
    @pregunta_dicotomica = PreguntaDicotomica.new(pregunta_dicotomica_params)

    respond_to do |format|
      if @pregunta_dicotomica.save
        format.html { redirect_to @pregunta_dicotomica, notice: 'Pregunta la pregunta fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @pregunta_dicotomica }
      else
        format.html { render :new }
        format.json { render json: @pregunta_dicotomica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregunta_dicotomicas/1
  # PATCH/PUT /pregunta_dicotomicas/1.json
  def update
    respond_to do |format|
      if @pregunta_dicotomica.update(pregunta_dicotomica_params)
        format.html { redirect_to @pregunta_dicotomica, notice: 'Pregunta la pregunta fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @pregunta_dicotomica }
      else
        format.html { render :edit }
        format.json { render json: @pregunta_dicotomica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregunta_dicotomicas/1
  # DELETE /pregunta_dicotomicas/1.json
  def destroy
    @pregunta_dicotomica.destroy
    respond_to do |format|
      format.html { redirect_to pregunta_dicotomicas_url, notice: 'Pregunta la pregunta fue destruida exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta_dicotomica
      @pregunta_dicotomica = PreguntaDicotomica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregunta_dicotomica_params
      params.require(:pregunta_dicotomica).permit(:nombre, :pregunta, :verdadero, :explicacion)
    end
end
