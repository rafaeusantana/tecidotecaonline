class CatalogosController < ApplicationController
  before_action :set_catalogo, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /catalogos
  # GET /catalogos.json
  def index
    @catalogo = Item.new
    @catalogos = Item.where("suporte_id=1 "+@catalogo.buildConditions(params))
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
      params.require(:item).permit(:localizacao, :tipo_aquisicao, :data_aquisicao, :fornecedor_aquisicao, :tamanho_id, :fabricante_id, :colecao_id, :ano_colecao, :especificacoes, :faixa_etaria_id, :peca_vestuario, tipo_material_ids: [])
    end
end
