# -*- encoding : utf-8 -*-
class TipoBandeirasController < ApplicationController
  before_action :set_tipo_bandeira, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /tipo_bandeiras
  # GET /tipo_bandeiras.json
  def index
    @tipo_bandeiras = Bandeira.all
  end

  # GET /tipo_bandeiras/1
  # GET /tipo_bandeiras/1.json
  def show
  end

  # GET /tipo_bandeiras/new
  def new
    @tipo_bandeira = Bandeira.new
  end

  # GET /tipo_bandeiras/1/edit
  def edit
  end

  # POST /tipo_bandeiras
  # POST /tipo_bandeiras.json
  def create
    @tipo_bandeira = Bandeira.new(tipo_bandeira_params)

    respond_to do |format|
      if @tipo_bandeira.save
        format.html { redirect_to tipo_bandeira_path(@tipo_bandeira), notice: 'Bandeira criada com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_bandeira }
      else
        format.html { render :new }
        format.json { render json: @tipo_bandeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_bandeiras/1
  # PATCH/PUT /tipo_bandeiras/1.json
  def update
    respond_to do |format|
      if @tipo_bandeira.update(tipo_bandeira_params)
        format.html { redirect_to tipo_bandeira_path(@tipo_bandeira), notice: 'Bandeira atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @tipo_bandeira }
      else
        format.html { render :edit }
        format.json { render json: @tipo_bandeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_bandeiras/1
  # DELETE /tipo_bandeiras/1.json
  def destroy
    @tipo_bandeira.destroy
    respond_to do |format|
      format.html { redirect_to tipo_bandeiras_url, notice: 'Bandeira excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_bandeira
      @tipo_bandeira = Bandeira.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_bandeira_params
      params.require(:bandeira).permit(:tipo)
    end
end
