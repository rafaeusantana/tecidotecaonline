class TexturasController < ApplicationController
  before_action :set_textura, only: [:show, :edit, :update, :destroy]
  before_filter :check_session, :only=>[:new, :edit, :destroy, :update]

  # GET /texturas
  # GET /texturas.json
  def index
    @texturas = Textura.all
  end

  # GET /texturas/1
  # GET /texturas/1.json
  def show
  end

  # GET /texturas/new
  def new
    @textura = Textura.new
  end

  # GET /texturas/1/edit
  def edit
  end

  # POST /texturas
  # POST /texturas.json
  def create
    @textura = Textura.new(textura_params)

    respond_to do |format|
      if @textura.save
        format.html { redirect_to textura_path(@textura), notice: 'Textura criada com sucesso.' }
        format.json { render :show, status: :created, location: @textura }
      else
        format.html { render :new }
        format.json { render json: @textura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /texturas/1
  # PATCH/PUT /texturas/1.json
  def update
    respond_to do |format|
      if @textura.update(textura_params)
        format.html { redirect_to textura_path(@textura), notice: 'Textura atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @textura }
      else
        format.html { render :edit }
        format.json { render json: @textura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /texturas/1
  # DELETE /texturas/1.json
  def destroy
    @textura.destroy
    respond_to do |format|
      format.html { redirect_to texturas_url, notice: 'Textura excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textura
      @textura = Textura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textura_params
      params.require(:textura).permit(:tipo)
    end
end
