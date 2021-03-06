class MovimentoDeEstoquesController < ApplicationController
  before_action :set_movimento_de_estoque, only: [:show, :edit, :update, :destroy]

  # GET /movimento_de_estoques
  # GET /movimento_de_estoques.json
  def index
    @movimento_de_estoques = MovimentoDeEstoque.all
  end

  # GET /movimento_de_estoques/1
  # GET /movimento_de_estoques/1.json
  def show
  end

  # GET /movimento_de_estoques/new
  def new
    @movimento_de_estoque = MovimentoDeEstoque.new
  end

  # GET /movimento_de_estoques/1/edit
  def edit
  end

  # POST /movimento_de_estoques
  # POST /movimento_de_estoques.json
  def create
    @movimento_de_estoque = MovimentoDeEstoque.new(movimento_de_estoque_params)

    respond_to do |format|
      if @movimento_de_estoque.save
        format.html { redirect_to @movimento_de_estoque, notice: 'Movimento de estoque was successfully created.' }
        format.json { render :show, status: :created, location: @movimento_de_estoque }
      else
        format.html { render :new }
        format.json { render json: @movimento_de_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimento_de_estoques/1
  # PATCH/PUT /movimento_de_estoques/1.json
  def update
    respond_to do |format|
      if @movimento_de_estoque.update(movimento_de_estoque_params)
        format.html { redirect_to @movimento_de_estoque, notice: 'Movimento de estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimento_de_estoque }
      else
        format.html { render :edit }
        format.json { render json: @movimento_de_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimento_de_estoques/1
  # DELETE /movimento_de_estoques/1.json
  def destroy
    @movimento_de_estoque.destroy
    respond_to do |format|
      format.html { redirect_to movimento_de_estoques_url, notice: 'Movimento de estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimento_de_estoque
      @movimento_de_estoque = MovimentoDeEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimento_de_estoque_params
      params.require(:movimento_de_estoque).permit(:data, :quantidade, :pessoa, :operacao, :produto)
    end
end
