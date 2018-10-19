class MaterialProductsController < ApplicationController
  before_action :set_material_product, only: [:show, :edit, :update, :destroy]

  # GET /material_products
  # GET /material_products.json
  def index
    @material_products = MaterialProduct.all
  end

  # GET /material_products/1
  # GET /material_products/1.json
  def show
  end

  # GET /material_products/new
  def new
    @material_product = MaterialProduct.new
  end

  # GET /material_products/1/edit
  def edit
  end

  # POST /material_products
  # POST /material_products.json
  def create
    @material_product = MaterialProduct.new(material_product_params)

    respond_to do |format|
      if @material_product.save
        format.html { redirect_to @material_product, notice: 'Material product was successfully created.' }
        format.json { render :show, status: :created, location: @material_product }
      else
        format.html { render :new }
        format.json { render json: @material_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_products/1
  # PATCH/PUT /material_products/1.json
  def update
    respond_to do |format|
      if @material_product.update(material_product_params)
        format.html { redirect_to @material_product, notice: 'Material product was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_product }
      else
        format.html { render :edit }
        format.json { render json: @material_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_products/1
  # DELETE /material_products/1.json
  def destroy
    @material_product.destroy
    respond_to do |format|
      format.html { redirect_to material_products_url, notice: 'Material product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_product
      @material_product = MaterialProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_product_params
      params.require(:material_product).permit(:material_id, :product_id)
    end
end
