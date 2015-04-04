# -*- encoding : utf-8 -*-
class AcabamentosController < ApplicationController
  before_action :set_acabamento, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /acabamentos
  # GET /acabamentos.json
  def index
    @acabamentos = Acabamento.all
  end

  # GET /acabamentos/1
  # GET /acabamentos/1.json
  def show
  end

  # GET /acabamentos/new
  def new
    @acabamento = Acabamento.new
  end

  # GET /acabamentos/1/edit
  def edit
  end

  # POST /acabamentos
  # POST /acabamentos.json
  def create
    @acabamento = Acabamento.new(acabamento_params)

    respond_to do |format|
      if @acabamento.save
        format.html { redirect_to acabamento_path(@acabamento), notice: 'Acabamento criada com sucesso.' }
        format.json { render :show, status: :created, location: @acabamento }
      else
        format.html { render :new }
        format.json { render json: @acabamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acabamentos/1
  # PATCH/PUT /acabamentos/1.json
  def update
    respond_to do |format|
      if @acabamento.update(acabamento_params)
        format.html { redirect_to acabamento_path(@acabamento), notice: 'Acabamento atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @acabamento }
      else
        format.html { render :edit }
        format.json { render json: @acabamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acabamentos/1
  # DELETE /acabamentos/1.json
  def destroy
    @acabamento.destroy
    respond_to do |format|
      format.html { redirect_to acabamentos_url, notice: 'Acabamento excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acabamento
      @acabamento = Acabamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acabamento_params
      params.require(:acabamento).permit(:tipo)
    end
end
