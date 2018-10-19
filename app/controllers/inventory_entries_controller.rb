class InventoryEntriesController < ApplicationController
  before_action :set_inventory_entry, only: [:show, :edit, :update, :destroy]

  # GET /inventory_entries
  # GET /inventory_entries.json
  def index
    @inventory_entries = InventoryEntry.all
  end

  # GET /inventory_entries/1
  # GET /inventory_entries/1.json
  def show
  end

  # GET /inventory_entries/new
  def new
    @inventory_entry = InventoryEntry.new
  end

  # GET /inventory_entries/1/edit
  def edit
  end

  # POST /inventory_entries
  # POST /inventory_entries.json
  def create
    @inventory_entry = InventoryEntry.new(inventory_entry_params)

    respond_to do |format|
      if @inventory_entry.save
        format.html { redirect_to @inventory_entry, notice: 'Inventory entry was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_entry }
      else
        format.html { render :new }
        format.json { render json: @inventory_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_entries/1
  # PATCH/PUT /inventory_entries/1.json
  def update
    respond_to do |format|
      if @inventory_entry.update(inventory_entry_params)
        format.html { redirect_to @inventory_entry, notice: 'Inventory entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_entry }
      else
        format.html { render :edit }
        format.json { render json: @inventory_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_entries/1
  # DELETE /inventory_entries/1.json
  def destroy
    @inventory_entry.destroy
    respond_to do |format|
      format.html { redirect_to inventory_entries_url, notice: 'Inventory entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_entry
      @inventory_entry = InventoryEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_entry_params
      params.require(:inventory_entry).permit(:inventory_id, :entry_date, :number_of_units)
    end
end
