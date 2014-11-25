class LigamentosController < ApplicationController
  before_action :set_ligamento, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /ligamentos
  # GET /ligamentos.json
  def index
    @ligamentos = Ligamento.all
  end

  # GET /ligamentos/1
  # GET /ligamentos/1.json
  def show
  end

  # GET /ligamentos/new
  def new
    @ligamento = Ligamento.new
  end

  # GET /ligamentos/1/edit
  def edit
  end

  # POST /ligamentos
  # POST /ligamentos.json
  def create
    @ligamento = Ligamento.new(ligamento_params)

    respond_to do |format|
      if @ligamento.save
        format.html { redirect_to ligamento_path(@ligamento), notice: 'Ligamento criada com sucesso.' }
        format.json { render :show, status: :created, location: @ligamento }
      else
        format.html { render :new }
        format.json { render json: @ligamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ligamentos/1
  # PATCH/PUT /ligamentos/1.json
  def update
    respond_to do |format|
      if @ligamento.update(ligamento_params)
        format.html { redirect_to ligamento_path(@ligamento), notice: 'Ligamento atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @ligamento }
      else
        format.html { render :edit }
        format.json { render json: @ligamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ligamentos/1
  # DELETE /ligamentos/1.json
  def destroy
    @ligamento.destroy
    respond_to do |format|
      format.html { redirect_to ligamentos_url, notice: 'Ligamento excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ligamento
      @ligamento = Ligamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ligamento_params
      params.require(:ligamento).permit(:tipo)
    end
end
