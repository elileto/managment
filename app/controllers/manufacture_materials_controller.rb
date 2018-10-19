class ManufactureMaterialsController < ApplicationController
  before_action :set_manufacture_material, only: [:show, :edit, :update, :destroy]

  # GET /manufacture_materials
  # GET /manufacture_materials.json
  def index
    @manufacture_materials = ManufactureMaterial.all
  end

  # GET /manufacture_materials/1
  # GET /manufacture_materials/1.json
  def show
  end

  # GET /manufacture_materials/new
  def new
    @manufacture_material = ManufactureMaterial.new
  end

  # GET /manufacture_materials/1/edit
  def edit
  end

  # POST /manufacture_materials
  # POST /manufacture_materials.json
  def create
    @manufacture_material = ManufactureMaterial.new(manufacture_material_params)

    respond_to do |format|
      if @manufacture_material.save
        format.html { redirect_to @manufacture_material, notice: 'Manufacture material was successfully created.' }
        format.json { render :show, status: :created, location: @manufacture_material }
      else
        format.html { render :new }
        format.json { render json: @manufacture_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manufacture_materials/1
  # PATCH/PUT /manufacture_materials/1.json
  def update
    respond_to do |format|
      if @manufacture_material.update(manufacture_material_params)
        format.html { redirect_to @manufacture_material, notice: 'Manufacture material was successfully updated.' }
        format.json { render :show, status: :ok, location: @manufacture_material }
      else
        format.html { render :edit }
        format.json { render json: @manufacture_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacture_materials/1
  # DELETE /manufacture_materials/1.json
  def destroy
    @manufacture_material.destroy
    respond_to do |format|
      format.html { redirect_to manufacture_materials_url, notice: 'Manufacture material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacture_material
      @manufacture_material = ManufactureMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manufacture_material_params
      params.require(:manufacture_material).permit(:material_id, :manufacture_id)
    end
end
