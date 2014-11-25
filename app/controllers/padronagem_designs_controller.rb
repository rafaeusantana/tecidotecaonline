class PadronagemDesignsController < ApplicationController
  before_action :set_padronagem_design, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /padronagem_designs
  # GET /padronagem_designs.jso
  def index
    @padronagem_designs = PadronagemDesign.all
  end

  # GET /padronagem_designs/1
  # GET /padronagem_designs/1.json
  def show
  end

  # GET /padronagem_designs/new
  def new
    @padronagem_design = PadronagemDesign.new
  end

  # GET /padronagem_designs/1/edit
  def edit
  end

  # POST /padronagem_designs
  # POST /padronagem_designs.json
  def create
    @padronagem_design = PadronagemDesign.new(padronagem_design_params)

    respond_to do |format|
      if @padronagem_design.save
        format.html { redirect_to padronagem_design_path(@padronagem_design), notice: 'Materia prima criada com sucesso.' }
        format.json { render :show, status: :created, location: @padronagem_design }
      else
        format.html { render :new }
        format.json { render json: @padronagem_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padronagem_designs/1
  # PATCH/PUT /padronagem_designs/1.json
  def update
    respond_to do |format|
      if @padronagem_design.update(padronagem_design_params)
        format.html { redirect_to padronagem_design_path(@padronagem_design), notice: 'Materia prima atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @padronagem_design }
      else
        format.html { render :edit }
        format.json { render json: @padronagem_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padronagem_designs/1
  # DELETE /padronagem_designs/1.json
  def destroy
    @padronagem_design.destroy
    respond_to do |format|
      format.html { redirect_to padronagem_designs_url, notice: 'Materia prima excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padronagem_design
      @padronagem_design = PadronagemDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def padronagem_design_params
      params.require(:padronagem_design).permit(:tipo)
    end
end
