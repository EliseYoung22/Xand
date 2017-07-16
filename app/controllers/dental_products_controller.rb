class DentalProductsController < ApplicationController
  before_action :set_dental_product, only: [:show, :edit, :update, :destroy]

  # GET /dental_products
  # GET /dental_products.json
  def index
    @dental_products = DentalProduct.all
  end

  # GET /dental_products/1
  # GET /dental_products/1.json
  def show
  end

  # GET /dental_products/new
  def new
    @dental_product = DentalProduct.new
  end

  # GET /dental_products/1/edit
  def edit
  end

  # POST /dental_products
  # POST /dental_products.json
  def create
    @dental_product = DentalProduct.new(dental_product_params)

    respond_to do |format|
      if @dental_product.save
        format.html { redirect_to @dental_product, notice: 'Dental product was successfully created.' }
        format.json { render :show, status: :created, location: @dental_product }
      else
        format.html { render :new }
        format.json { render json: @dental_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dental_products/1
  # PATCH/PUT /dental_products/1.json
  def update
    respond_to do |format|
      if @dental_product.update(dental_product_params)
        format.html { redirect_to @dental_product, notice: 'Dental product was successfully updated.' }
        format.json { render :show, status: :ok, location: @dental_product }
      else
        format.html { render :edit }
        format.json { render json: @dental_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dental_products/1
  # DELETE /dental_products/1.json
  def destroy
    @dental_product.destroy
    respond_to do |format|
      format.html { redirect_to dental_products_url, notice: 'Dental product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dental_product
      @dental_product = DentalProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dental_product_params
      params.require(:dental_product).permit(:title, :subtitle, :description, :image)
    end
end
