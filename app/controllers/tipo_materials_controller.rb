class TipoMaterialsController < ApplicationController
  before_action :set_tipo_material, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /tipo_materials
  # GET /tipo_materials.jso
  def index
    @tipo_materials = TipoMaterial.all
  end

  # GET /tipo_materials/1
  # GET /tipo_materials/1.json
  def show
  end

  # GET /tipo_materials/new
  def new
    @tipo_material = TipoMaterial.new
  end

  # GET /tipo_materials/1/edit
  def edit
  end

  # POST /tipo_materials
  # POST /tipo_materials.json
  def create
    @tipo_material = TipoMaterial.new(tipo_material_params)

    respond_to do |format|
      if @tipo_material.save
        format.html { redirect_to tipo_material_path(@tipo_material), notice: 'Materia prima criada com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_material }
      else
        format.html { render :new }
        format.json { render json: @tipo_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_materials/1
  # PATCH/PUT /tipo_materials/1.json
  def update
    respond_to do |format|
      if @tipo_material.update(tipo_material_params)
        format.html { redirect_to tipo_material_path(@tipo_material), notice: 'Materia prima atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @tipo_material }
      else
        format.html { render :edit }
        format.json { render json: @tipo_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_materials/1
  # DELETE /tipo_materials/1.json
  def destroy
    @tipo_material.destroy
    respond_to do |format|
      format.html { redirect_to tipo_materials_url, notice: 'Materia prima excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_material
      @tipo_material = TipoMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_material_params
      params.require(:tipo_material).permit(:nome)
    end
end
