# -*- encoding : utf-8 -*-
class ColecaosController < ApplicationController
  before_action :set_colecao, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /colecaos
  # GET /colecaos.json
  def index
    @colecaos = Colecao.all
  end

  # GET /colecaos/1
  # GET /colecaos/1.json
  def show
  end

  # GET /colecaos/new
  def new
    @colecao = Colecao.new
  end

  # GET /colecaos/1/edit
  def edit
  end

  # POST /colecaos
  # POST /colecaos.json
  def create
    @colecao = Colecao.new(colecao_params)

    respond_to do |format|
      if @colecao.save
        format.html { redirect_to colecao_path(@colecao), notice: 'Colecao criada com sucesso.' }
        format.json { render :show, status: :created, location: @colecao }
      else
        format.html { render :new }
        format.json { render json: @colecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colecaos/1
  # PATCH/PUT /colecaos/1.json
  def update
    respond_to do |format|
      if @colecao.update(colecao_params)
        format.html { redirect_to colecao_path(@colecao), notice: 'Colecao atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @colecao }
      else
        format.html { render :edit }
        format.json { render json: @colecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colecaos/1
  # DELETE /colecaos/1.json
  def destroy
    @colecao.destroy
    respond_to do |format|
      format.html { redirect_to colecaos_url, notice: 'Colecao excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colecao
      @colecao = Colecao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colecao_params
      params.require(:colecao).permit(:nome)
    end
end
