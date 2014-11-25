class FioTitulosController < ApplicationController
  before_action :set_fio_titulo, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /fio_titulos
  # GET /fio_titulos.jso
  def index
    @fio_titulos = FioTitulo.all
  end

  # GET /fio_titulos/1
  # GET /fio_titulos/1.json
  def show
  end

  # GET /fio_titulos/new
  def new
    @fio_titulo = FioTitulo.new
  end

  # GET /fio_titulos/1/edit
  def edit
  end

  # POST /fio_titulos
  # POST /fio_titulos.json
  def create
    @fio_titulo = FioTitulo.new(fio_titulo_params)

    respond_to do |format|
      if @fio_titulo.save
        format.html { redirect_to fio_titulo_path(@fio_titulo), notice: 'Materia prima criada com sucesso.' }
        format.json { render :show, status: :created, location: @fio_titulo }
      else
        format.html { render :new }
        format.json { render json: @fio_titulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fio_titulos/1
  # PATCH/PUT /fio_titulos/1.json
  def update
    respond_to do |format|
      if @fio_titulo.update(fio_titulo_params)
        format.html { redirect_to fio_titulo_path(@fio_titulo), notice: 'Materia prima atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @fio_titulo }
      else
        format.html { render :edit }
        format.json { render json: @fio_titulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fio_titulos/1
  # DELETE /fio_titulos/1.json
  def destroy
    @fio_titulo.destroy
    respond_to do |format|
      format.html { redirect_to fio_titulos_url, notice: 'Materia prima excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fio_titulo
      @fio_titulo = FioTitulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fio_titulo_params
      params.require(:fio_titulo).permit(:tipo)
    end
end
