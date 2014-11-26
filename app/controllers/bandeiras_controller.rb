class BandeirasController < ApplicationController
  before_action :set_bandeira, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /bandeiras
  # GET /bandeiras.json
  def index
	cond = Item.buildConditions(params)
	if !params[:item].nil? && !params[:item][:materia_prima_ids].nil? && params[:item][:materia_prima_ids].count>1
      @bandeiras = Item.joins(:item_materia_primas).where("suporte_id=2 " + cond).group(:id)
    else
      @bandeiras = Item.where("suporte_id=2 " + cond)
	end

	if params[:item].nil?
		@bandeira = Item.new
	else
		@bandeira = Item.new(bandeira_params)
	end	
  end

  # GET /bandeiras/1
  # GET /bandeiras/1.json
  def show
  end

  # GET /bandeiras/new
  def new
    @bandeira = Item.new
  end

  # GET /bandeiras/1/edit
  def edit
  end

  # POST /bandeiras
  # POST /bandeiras.json
  def create
    @bandeira = Item.new(bandeira_params)
    @bandeira.suporte_id = 2

    respond_to do |format|
      if @bandeira.save
        format.html { redirect_to bandeira_path(@bandeira), notice: 'Bandeira criada com sucesso.' }
        format.json { render :show, status: :created, location: @bandeira }
      else
        format.html { render :new }
        format.json { render json: @bandeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bandeiras/1
  # PATCH/PUT /bandeiras/1.json
  def update
    respond_to do |format|
      if @bandeira.update(bandeira_params)
        format.html { redirect_to bandeira_path(@bandeira), notice: 'Bandeira atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @bandeira }
      else
        format.html { render :edit }
        format.json { render json: @bandeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bandeiras/1
  # DELETE /bandeiras/1.json
  def destroy
    @bandeira.destroy
    respond_to do |format|
      format.html { redirect_to bandeiras_url, notice: 'Bandeira excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bandeira
      @bandeira = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bandeira_params
      params.require(:item).permit(:tipo_bandeira_id, :localizacao, :tipo_aquisicao, :data_aquisicao, :fornecedor_aquisicao, :gramatura, :numero_trama, :numero_urdume, 
:fabricante_id, :colecao_id, :ano_colecao, :especificacoes, :cor_id, :analise_cor, :acabamento_id, :textura_id,  materia_prima_ids: [], ligamento_ids: [], fio_titulo_ids: [], padronagem_design_ids: [], uso_tecido_ids: [], cor_adicional_ids: [], tecnica_design_ids: [])
    end
end
