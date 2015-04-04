# -*- encoding : utf-8 -*-
class FabricantesController < ApplicationController
  before_action :set_fabricante, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /fabricantes
  # GET /fabricantes.json
  def index
    @fabricantes = Fabricante.all
  end

  # GET /fabricantes/1
  # GET /fabricantes/1.json
  def show
  end

  # GET /fabricantes/new
  def new
    @fabricante = Fabricante.new
  end

  # GET /fabricantes/1/edit
  def edit
  end

  # POST /fabricantes
  # POST /fabricantes.json
  def create
    @fabricante = Fabricante.new(fabricante_params)

    respond_to do |format|
      if @fabricante.save
        format.html { redirect_to fabricante_path(@fabricante), notice: 'Fabricante criada com sucesso.' }
        format.json { render :show, status: :created, location: @fabricante }
      else
        format.html { render :new }
        format.json { render json: @fabricante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fabricantes/1
  # PATCH/PUT /fabricantes/1.json
  def update
    respond_to do |format|
      if @fabricante.update(fabricante_params)
        format.html { redirect_to fabricante_path(@fabricante), notice: 'Fabricante atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @fabricante }
      else
        format.html { render :edit }
        format.json { render json: @fabricante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabricantes/1
  # DELETE /fabricantes/1.json
  def destroy
    @fabricante.destroy
    respond_to do |format|
      format.html { redirect_to fabricantes_url, notice: 'Fabricante excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabricante
      @fabricante = Fabricante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fabricante_params
      params.require(:fabricante).permit(:nome, :estado, :cidade, :endereco, :pais, :site, :email)
    end
end
