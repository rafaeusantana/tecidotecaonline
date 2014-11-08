class BandeirasController < ApplicationController
  before_action :set_bandeira, only: [:show, :edit, :update, :destroy]

  # GET /bandeiras
  # GET /bandeiras.json
  def index
    @bandeiras = Item.all
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
    @bandeira.suporte = 2

    respond_to do |format|
      if @bandeira.save
        format.html { redirect_to bandeira_path(@bandeira), notice: 'bandeira was successfully created.' }
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
        format.html { redirect_to bandeira_path(@bandeira), notice: 'bandeira was successfully updated.' }
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
      format.html { redirect_to bandeiras_url, notice: 'bandeira was successfully destroyed.' }
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
      params.require(:item).permit(:suporte_id, :localizacao, :nome_aquisicao, :data_aquisicao, :fibra_tecido, :codificacao_internacional_tecido, :fabricante_id)
    end
end
