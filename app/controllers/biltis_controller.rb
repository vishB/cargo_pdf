class BiltisController < ApplicationController
  before_action :set_bilti, only: [:show, :edit, :update, :destroy]

  # GET /biltis
  # GET /biltis.json
  def index
    @biltis = Bilti.all
  end

  # GET /biltis/1
  # GET /biltis/1.json
  def show
  end

  # GET /biltis/new
  def new
    @bilti = Bilti.new
  end

  # GET /biltis/1/edit
  def edit
  end

  # POST /biltis
  # POST /biltis.json
  def create
    @bilti = Bilti.new(bilti_params)

    respond_to do |format|
      if @bilti.save
        format.html { redirect_to @bilti, notice: 'Bilti was successfully created.' }
        format.json { render :show, status: :created, location: @bilti }
      else
        format.html { render :new }
        format.json { render json: @bilti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biltis/1
  # PATCH/PUT /biltis/1.json
  def update
    respond_to do |format|
      if @bilti.update(bilti_params)
        format.html { redirect_to @bilti, notice: 'Bilti was successfully updated.' }
        format.json { render :show, status: :ok, location: @bilti }
      else
        format.html { render :edit }
        format.json { render json: @bilti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biltis/1
  # DELETE /biltis/1.json
  def destroy
    @bilti.destroy
    respond_to do |format|
      format.html { redirect_to biltis_url, notice: 'Bilti was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bilti
      @bilti = Bilti.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bilti_params
      params.require(:bilti).permit(:office, :h_0, :consigner, :consignee, :l_r_no, :bar_code, :booking_date, :invoice_no, :goods, :frieght, :actual_weight, :changed_weight, :goods_value, :transport_mode, :tin_no, :total, :client_id, :company_id)
    end
end
