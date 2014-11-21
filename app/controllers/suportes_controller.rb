class SuportesController < ApplicationController
  before_action :set_suporte, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /suportes
  # GET /suportes.json
  def index
    @suportes = Suporte.all
  end

  # GET /suportes/1
  # GET /suportes/1.json
  def show
  end

  # GET /suportes/new
  def new
    @suporte = Suporte.new
  end

  # GET /suportes/1/edit
  def edit
  end

  # POST /suportes
  # POST /suportes.json
  def create
    @suporte = Suporte.new(suporte_params)

    respond_to do |format|
      if @suporte.save
        format.html { redirect_to suporte_path(@suporte), notice: 'Suporte criado com sucesso.' }
        format.json { render :show, status: :created, location: @suporte }
      else
        format.html { render :new }
        format.json { render json: @suporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suportes/1
  # PATCH/PUT /suportes/1.json
  def update
    respond_to do |format|
      if @suporte.update(suporte_params)
        format.html { redirect_to suporte_path(@suporte), notice: 'Suporte atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @suporte }
      else
        format.html { render :edit }
        format.json { render json: @suporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suportes/1
  # DELETE /suportes/1.json
  def destroy
    @suporte.destroy
    respond_to do |format|
      format.html { redirect_to suportes_url, notice: 'Suporte excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suporte
      @suporte = Suporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suporte_params
      params.require(:suporte).permit(:nome)
    end
end
