class TecnicaDesignsController < ApplicationController
  before_action :set_tecnica_design, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /tecnica_designs
  # GET /tecnica_designs.jso
  def index
    @tecnica_designs = TecnicaDesign.all
  end

  # GET /tecnica_designs/1
  # GET /tecnica_designs/1.json
  def show
  end

  # GET /tecnica_designs/new
  def new
    @tecnica_design = TecnicaDesign.new
  end

  # GET /tecnica_designs/1/edit
  def edit
  end

  # POST /tecnica_designs
  # POST /tecnica_designs.json
  def create
    @tecnica_design = TecnicaDesign.new(tecnica_design_params)

    respond_to do |format|
      if @tecnica_design.sav
        format.html { redirect_to tecnica_design_path(@tecnica_design), notice: 'Materia prima criada com sucesso.' }
        format.json { render :show, status: :created, location: @tecnica_design }
      else
        format.html { render :new }
        format.json { render json: @tecnica_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnica_designs/1
  # PATCH/PUT /tecnica_designs/1.json
  def update
    respond_to do |format|
      if @tecnica_design.update(tecnica_design_params)
        format.html { redirect_to tecnica_design_path(@tecnica_design), notice: 'Materia prima atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @tecnica_design }
      else
        format.html { render :edit }
        format.json { render json: @tecnica_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnica_designs/1
  # DELETE /tecnica_designs/1.json
  def destroy
    @tecnica_design.destroy
    respond_to do |format|
      format.html { redirect_to tecnica_designs_url, notice: 'Materia prima excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnica_design
      @tecnica_design = TecnicaDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tecnica_design_params
      params.require(:tecnica_design).permit(:nome)
    end
end
