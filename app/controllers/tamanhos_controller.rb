# -*- encoding : utf-8 -*-
class TamanhosController < ApplicationController
  before_action :set_tamanho, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /tamanhos
  # GET /tamanhos.json
  def index
    @tamanhos = Tamanho.all
  end

  # GET /tamanhos/1
  # GET /tamanhos/1.json
  def show
  end

  # GET /tamanhos/new
  def new
    @tamanho = Tamanho.new
  end

  # GET /tamanhos/1/edit
  def edit
  end

  # POST /tamanhos
  # POST /tamanhos.json
  def create
    @tamanho = Tamanho.new(tamanho_params)

    respond_to do |format|
      if @tamanho.save
        format.html { redirect_to tamanho_path(@tamanho), notice: 'Tamanho criado com sucesso.' }
        format.json { render :show, status: :created, location: @tamanho }
      else
        format.html { render :new }
        format.json { render json: @tamanho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tamanhos/1
  # PATCH/PUT /tamanhos/1.json
  def update
    respond_to do |format|
      if @tamanho.update(tamanho_params)
        format.html { redirect_to tamanho_path(@tamanho), notice: 'Tamanho atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @tamanho }
      else
        format.html { render :edit }
        format.json { render json: @tamanho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamanhos/1
  # DELETE /tamanhos/1.json
  def destroy
    @tamanho.destroy
    respond_to do |format|
      format.html { redirect_to tamanhos_url, notice: 'Tamanho excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tamanho
      @tamanho = Tamanho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tamanho_params
      params.require(:tamanho).permit(:nome)
    end
end
