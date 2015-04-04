# -*- encoding : utf-8 -*-
class UsoTecidosController < ApplicationController
  before_action :set_uso_tecido, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /uso_tecidos
  # GET /uso_tecidos.jso
  def index
    @uso_tecidos = UsoTecido.all
  end

  # GET /uso_tecidos/1
  # GET /uso_tecidos/1.json
  def show
  end

  # GET /uso_tecidos/new
  def new
    @uso_tecido = UsoTecido.new
  end

  # GET /uso_tecidos/1/edit
  def edit
  end

  # POST /uso_tecidos
  # POST /uso_tecidos.json
  def create
    @uso_tecido = UsoTecido.new(uso_tecido_params)

    respond_to do |format|
      if @uso_tecido.save
        format.html { redirect_to uso_tecido_path(@uso_tecido), notice: 'Materia prima criada com sucesso.' }
        format.json { render :show, status: :created, location: @uso_tecido }
      else
        format.html { render :new }
        format.json { render json: @uso_tecido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uso_tecidos/1
  # PATCH/PUT /uso_tecidos/1.json
  def update
    respond_to do |format|
      if @uso_tecido.update(uso_tecido_params)
        format.html { redirect_to uso_tecido_path(@uso_tecido), notice: 'Materia prima atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @uso_tecido }
      else
        format.html { render :edit }
        format.json { render json: @uso_tecido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uso_tecidos/1
  # DELETE /uso_tecidos/1.json
  def destroy
    @uso_tecido.destroy
    respond_to do |format|
      format.html { redirect_to uso_tecidos_url, notice: 'Materia prima excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uso_tecido
      @uso_tecido = UsoTecido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uso_tecido_params
      params.require(:uso_tecido).permit(:tipo)
    end
end
