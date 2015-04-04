# -*- encoding : utf-8 -*-
class VariadosController < ApplicationController
  before_action :set_variado, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /variados
  # GET /variados.json
  def index
	@variados = Item.selecionarItens(params, "3").page(params['page']).per(20)

	if params[:item].nil?
		@variado = Item.new
	else
		@variado = Item.new(variado_params)
	end	
	  respond_to do |format|
	    format.html
	    format.csv {send_data @variados.to_csv}
	  end
  end

  # GET /variados/1
  # GET /variados/1.json
  def show
  end

  # GET /variados/new
  def new
    @variado = Item.new
  end

  # GET /variados/1/edit
  def edit
  end

  # POST /variados
  # POST /variados.json
  def create
    @variado = Item.new(variado_params)
    @variado.suporte_id = 3

    respond_to do |format|
      if @variado.save
        format.html { redirect_to variado_path(@variado), notice: 'variado criada com sucesso.' }
        format.json { render :show, status: :created, location: @variado }
      else
        format.html { render :new }
        format.json { render json: @variado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variados/1
  # PATCH/PUT /variados/1.json
  def update
    respond_to do |format|
      if @variado.update(variado_params)
        format.html { redirect_to variado_path(@variado), notice: 'variado atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @variado }
      else
        format.html { render :edit }
        format.json { render json: @variado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variados/1
  # DELETE /variados/1.json
  def destroy
    @variado.destroy
    respond_to do |format|
      format.html { redirect_to variados_url, notice: 'variado excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variado
      @variado = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variado_params
      params.require(:item).permit(:tipo_item_variado_id, :localizacao, :tipo_aquisicao, :data_aquisicao, :fornecedor_aquisicao, :tamanho_id, :gramatura, :numero_trama, :numero_urdume, 
:fabricante_id, :colecao_id, :ano_colecao, :especificacoes, :faixa_etaria_id, :peca_vestuario, :cor_id, :analise_cor, :acabamento_id, :textura_id,  tipo_material_ids: [], materia_prima_ids: [], ligamento_ids: [], fio_titulo_ids: [], padronagem_design_ids: [], uso_tecido_ids: [], cor_adicional_ids: [], tecnica_design_ids: [])
    end
end
