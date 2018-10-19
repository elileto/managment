class OrderDatesController < ApplicationController
  before_action :set_order_date, only: [:show, :edit, :update, :destroy]

  # GET /order_dates
  # GET /order_dates.json
  def index
    @order_dates = OrderDate.all
  end

  # GET /order_dates/1
  # GET /order_dates/1.json
  def show
  end

  # GET /order_dates/new
  def new
    @order_date = OrderDate.new
  end

  # GET /order_dates/1/edit
  def edit
  end

  # POST /order_dates
  # POST /order_dates.json
  def create
    @order_date = OrderDate.new(order_date_params)

    respond_to do |format|
      if @order_date.save
        format.html { redirect_to @order_date, notice: 'Order date was successfully created.' }
        format.json { render :show, status: :created, location: @order_date }
      else
        format.html { render :new }
        format.json { render json: @order_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_dates/1
  # PATCH/PUT /order_dates/1.json
  def update
    respond_to do |format|
      if @order_date.update(order_date_params)
        format.html { redirect_to @order_date, notice: 'Order date was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_date }
      else
        format.html { render :edit }
        format.json { render json: @order_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_dates/1
  # DELETE /order_dates/1.json
  def destroy
    @order_date.destroy
    respond_to do |format|
      format.html { redirect_to order_dates_url, notice: 'Order date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_date
      @order_date = OrderDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_date_params
      params.require(:order_date).permit(:order_placed, :order_received, :order_complete)
    end
end
