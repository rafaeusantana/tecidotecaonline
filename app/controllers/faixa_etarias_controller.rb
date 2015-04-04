# -*- encoding : utf-8 -*-
class FaixaEtariasController < ApplicationController
  before_action :set_faixa_etaria, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /faixa_etarias
  # GET /faixa_etarias.jso
  def index
    @faixa_etarias = FaixaEtaria.all
  end

  # GET /faixa_etarias/1
  # GET /faixa_etarias/1.json
  def show
  end

  # GET /faixa_etarias/new
  def new
    @faixa_etaria = FaixaEtaria.new
  end

  # GET /faixa_etarias/1/edit
  def edit
  end

  # POST /faixa_etarias
  # POST /faixa_etarias.json
  def create
    @faixa_etaria = FaixaEtaria.new(faixa_etaria_params)

    respond_to do |format|
      if @faixa_etaria.save
        format.html { redirect_to faixa_etaria_path(@faixa_etaria), notice: 'Materia prima criada com sucesso.' }
        format.json { render :show, status: :created, location: @faixa_etaria }
      else
        format.html { render :new }
        format.json { render json: @faixa_etaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faixa_etarias/1
  # PATCH/PUT /faixa_etarias/1.json
  def update
    respond_to do |format|
      if @faixa_etaria.update(faixa_etaria_params)
        format.html { redirect_to faixa_etaria_path(@faixa_etaria), notice: 'Materia prima atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @faixa_etaria }
      else
        format.html { render :edit }
        format.json { render json: @faixa_etaria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faixa_etarias/1
  # DELETE /faixa_etarias/1.json
  def destroy
    @faixa_etaria.destroy
    respond_to do |format|
      format.html { redirect_to faixa_etarias_url, notice: 'Materia prima excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faixa_etaria
      @faixa_etaria = FaixaEtaria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faixa_etaria_params
      params.require(:faixa_etaria).permit(:nome)
    end
end
