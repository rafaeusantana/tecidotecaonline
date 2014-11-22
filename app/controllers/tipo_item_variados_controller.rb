class TipoItemVariadosController < ApplicationController
  before_action :set_tipo_item_variado, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /tipo_item_variados
  # GET /tipo_item_variados.json
  def index
    @tipo_item_variados = ItemVariado.all
  end

  # GET /tipo_item_variados/1
  # GET /tipo_item_variados/1.json
  def show
  end

  # GET /tipo_item_variados/new
  def new
    @tipo_item_variado = ItemVariado.new
  end

  # GET /tipo_item_variados/1/edit
  def edit
  end

  # POST /tipo_item_variados
  # POST /tipo_item_variados.json
  def create
    @tipo_item_variado = ItemVariado.new(tipo_item_variado_params)

    respond_to do |format|
      if @tipo_item_variado.save
        format.html { redirect_to tipo_item_variado_path(@tipo_item_variado), notice: 'ItemVariado criada com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_item_variado }
      else
        format.html { render :new }
        format.json { render json: @tipo_item_variado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_item_variados/1
  # PATCH/PUT /tipo_item_variados/1.json
  def update
    respond_to do |format|
      if @tipo_item_variado.update(tipo_item_variado_params)
        format.html { redirect_to tipo_item_variado_path(@tipo_item_variado), notice: 'ItemVariado atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @tipo_item_variado }
      else
        format.html { render :edit }
        format.json { render json: @tipo_item_variado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_item_variados/1
  # DELETE /tipo_item_variados/1.json
  def destroy
    @tipo_item_variado.destroy
    respond_to do |format|
      format.html { redirect_to tipo_item_variados_url, notice: 'ItemVariado excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_item_variado
      @tipo_item_variado = ItemVariado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_item_variado_params
      params.require(:item_variado).permit(:tipo)
    end
end
