class CryoProductsController < ApplicationController
  before_action :set_cryo_product, only: [:show, :edit, :update, :destroy]

  # GET /cryo_products
  # GET /cryo_products.json
  def index
    @cryo_products = CryoProduct.all
  end

  # GET /cryo_products/1
  # GET /cryo_products/1.json
  def show
  end

  # GET /cryo_products/new
  def new
    @cryo_product = CryoProduct.new
  end

  # GET /cryo_products/1/edit
  def edit
  end

  # POST /cryo_products
  # POST /cryo_products.json
  def create
    @cryo_product = CryoProduct.new(cryo_product_params)

    respond_to do |format|
      if @cryo_product.save
        format.html { redirect_to @cryo_product, notice: 'Cryo product was successfully created.' }
        format.json { render :show, status: :created, location: @cryo_product }
      else
        format.html { render :new }
        format.json { render json: @cryo_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cryo_products/1
  # PATCH/PUT /cryo_products/1.json
  def update
    respond_to do |format|
      if @cryo_product.update(cryo_product_params)
        format.html { redirect_to @cryo_product, notice: 'Cryo product was successfully updated.' }
        format.json { render :show, status: :ok, location: @cryo_product }
      else
        format.html { render :edit }
        format.json { render json: @cryo_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cryo_products/1
  # DELETE /cryo_products/1.json
  def destroy
    @cryo_product.destroy
    respond_to do |format|
      format.html { redirect_to cryo_products_url, notice: 'Cryo product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cryo_product
      @cryo_product = CryoProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cryo_product_params
      params.require(:cryo_product).permit(:title, :subtitle, :description, :image)
    end
end
