class CrustsController < ApplicationController
  before_action :set_crust, only: [:show, :edit, :update, :destroy]

  # GET /crusts
  # GET /crusts.json
  def index
    @crusts = Crust.all
  end

  # GET /crusts/1
  # GET /crusts/1.json
  def show
  end

  # GET /crusts/new
  def new
    @crust = Crust.new
  end

  # GET /crusts/1/edit
  def edit
  end

  # POST /crusts
  # POST /crusts.json
  def create
    @crust = Crust.new(crust_params)

    respond_to do |format|
      if @crust.save
        format.html { redirect_to @crust, notice: 'Crust was successfully created.' }
        format.json { render :show, status: :created, location: @crust }
      else
        format.html { render :new }
        format.json { render json: @crust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crusts/1
  # PATCH/PUT /crusts/1.json
  def update
    respond_to do |format|
      if @crust.update(crust_params)
        format.html { redirect_to @crust, notice: 'Crust was successfully updated.' }
        format.json { render :show, status: :ok, location: @crust }
      else
        format.html { render :edit }
        format.json { render json: @crust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crusts/1
  # DELETE /crusts/1.json
  def destroy
    @crust.destroy
    respond_to do |format|
      format.html { redirect_to crusts_url, notice: 'Crust was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crust
      @crust = Crust.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crust_params
      params.require(:crust).permit(:type, :price)
    end
end
