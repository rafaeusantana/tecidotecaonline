class CatalogosController < ApplicationController
  before_action :set_catalogo, only: [:show, :edit, :update, :destroy]

  # GET /catalogos
  # GET /catalogos.json
  def index
    @catalogos = Item.all
  end

  # GET /catalogos/1
  # GET /catalogos/1.json
  def show
  end

  # GET /catalogos/new
  def new
    @catalogo = Item.new
  end

  # GET /catalogos/1/edit
  def edit
  end

  # POST /catalogos
  # POST /catalogos.json
  def create
    @catalogo = Item.new(catalogo_params)
    @catalogo.suporte_id = 1
    respond_to do |format|
      if @catalogo.save
        format.html { redirect_to catalogo_path(@catalogo), notice: 'Catálogo criado com sucesso.' }
        format.json { render :show, status: :created, location: @catalogo }
      else
        format.html { render :new }
        format.json { render json: @catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogos/1
  # PATCH/PUT /catalogos/1.json
  def update
    respond_to do |format|
      if @catalogo.update(catalogo_params)
        format.html { redirect_to catalogo_path(@catalogo), notice: 'Catálogo atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @catalogo }
      else
        format.html { render :edit }
        format.json { render json: @catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogos/1
  # DELETE /catalogos/1.json
  def destroy
    @catalogo.destroy
    respond_to do |format|
      format.html { redirect_to catalogos_url, notice: 'Catálogo excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogo
      @catalogo = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogo_params
      params.require(:item).permit(:localizacao, :nome_aquisicao, :data_aquisicao, :tamanho_catalogo, :fabricante_id, :colecao_id, :especificacoes, :peca_vestuario, ligamento_ids: [], materia_prima_ids: [], tipo_material_ids: [], padronagem_design_ids: [], faixa_etaria_ids: [])
    end
end
