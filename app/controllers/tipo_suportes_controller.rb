# -*- encoding : utf-8 -*-
class TipoSuportesController < ApplicationController
  before_action :set_tipo_suporte, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /tipo_suportes
  # GET /tipo_suportes.json
  def index
    @tipo_suportes = Suporte.all
  end

  # GET /tipo_suportes/1
  # GET /tipo_suportes/1.json
  def show
  end

  # GET /tipo_suportes/new
  def new
    @tipo_suporte = Suporte.new
  end

  # GET /tipo_suportes/1/edit
  def edit
  end

  # POST /tipo_suportes
  # POST /tipo_suportes.json
  def create
    @tipo_suporte = Suporte.new(tipo_suporte_params)

    respond_to do |format|
      if @tipo_suporte.save
        format.html { redirect_to tipo_suporte_path(@tipo_suporte), notice: 'Suporte criado com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_suporte }
      else
        format.html { render :new }
        format.json { render json: @tipo_suporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_suportes/1
  # PATCH/PUT /tipo_suportes/1.json
  def update
    respond_to do |format|
      if @tipo_suporte.update(tipo_suporte_params)
        format.html { redirect_to tipo_suporte_path(@tipo_suporte), notice: 'Suporte atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @tipo_suporte }
      else
        format.html { render :edit }
        format.json { render json: @tipo_suporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_suportes/1
  # DELETE /tipo_suportes/1.json
  def destroy
    @tipo_suporte.destroy
    respond_to do |format|
      format.html { redirect_to tipo_suportes_url, notice: 'Suporte excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_suporte
      @tipo_suporte = Suporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_suporte_params
      params.require(:suporte).permit(:nome)
    end
end
